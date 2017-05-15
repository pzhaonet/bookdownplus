#!/usr/bin/python
import pandocfilters as pf
import json
import sys
from commonfilters import *

class Columns:
    def __init__(self, result, columns = 1, main = False):
        self.valid = False
        self.reset(result, columns, main)

    def reset(self, result, columns, main = False):
        self.end(result)

        self.main = main
        self._columns = columns
        self._colwidthleft = 1.0
        self._colleft = columns
        self.valid = result != None

        self.begin(result)

    def begin(self, result):
        if not self.valid or result == None:
            return
        result.append(lb(r'\begin{columns}'))

    def column(self, result, width = None):
        if not self.valid or result == None:
            return
        if not width:
            width = self._colwidthleft / self._colleft
        self._colwidthleft -= width
        self._colleft -= 1
        result.append(lb(r'\column{(\linewidth-%dcm)*\real{%f}}' % (self._columns - 1, width)))

    def end(self, result):
        if not self.valid or result == None:
            return
        result.append(lb(r'\end{columns}'))
        self.valid = False

class Block:
    def __init__(self):
        self.active = False

    def begin(self, result, title):
        self.end(result)
        result.append(lb(r'\begin{block}{%s}' % title))
        self.active = True

    def end(self, result):
        if not self.active:
            return
        result.append(lb(r'\end{block}'))
        self.active = False

columns = []
block = Block()

def structure_para(v, f, m):
    global columns, block
    value = pf.stringify(v)
    if value.startswith('[') and value.endswith(']'):
        content = value[1:-1]
        result = []
        if content.startswith('columns='):
            columns.append(Columns(result, int(content[8:]), len(columns) == 0))
            return result
        elif content == '/columns':
            if len(columns) <= 1:
                block.end(result)
            columns.pop().end(result)
            return result
        elif content == 'column' or content.startswith('column='):
            if len(columns) <= 1:
                block.end(result)
            if content.startswith('column='):
                columns[-1].column(result, float(content[7:]))
            else:
                columns[-1].column(result)
            return result

def structure_header(v, f, m):
    global block
    result = []
    if v[0] == 1:
        block.begin(result, pf.stringify(v[2]))
        return result
    elif v[0] == 2:
        # second level ignored and removed on posters
        return []
    elif v[0] == 3:
        result.append(lb(r'\structure{%s}' % pf.stringify(v[2])))
        return result

# Supported syntax:
#   [columns=...]: start a new column set with the given number of columns
#   [column]: start a new column with equal width
#   [column=...]: start a new column with given fraction of the line width
#   [/columns]: end a column set
#   # header1: start a new block
#   ## header1: ignored for compatibility with the presentation template
#   ### header3: start a new structural section (\structure)

def filter_structure(k, v, f, m):
    if k == 'Para':
        return structure_para(v, f, m)
    elif k == 'Header':
        return structure_header(v, f, m)

# Supported syntax:
#   [ipe]: start a new in-paragraph enumeration, use \item for the individual items
#   [/ipe]: end an in-paragraph enumeration

def filter_paraenum(k, v, f, m):
    if k == 'Str':
        value = v
        if value.startswith('[') and value.endswith(']'):
            content = value[1:-1]
            if content == 'ipe':
                return li('\\begin{inparaenum}[(1)]')
            elif content == '/ipe':
                return li('\\end{inparaenum}')

if __name__ == '__main__':
    doc = json.loads(sys.stdin.read())
    if len(sys.argv) > 1:
        format = sys.argv[1]
    else:
        format = ''
    doc = pf.walk(doc, filter_structure, format, doc[0]['unMeta'])
    doc = pf.walk(doc, filter_paraenum, format, doc[0]['unMeta'])
    doc = pf.walk(doc, ImageWalker().filter, format, doc[0]['unMeta'])
    json.dump(doc, sys.stdout)
