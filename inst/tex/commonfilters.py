import re
import pandocfilters as pf

def lb(s):
    return pf.RawBlock('latex', s)

def li(s):
    return pf.RawInline('latex', s)

def fig(name, props, anim):
    return li('\\includegraphics%s[%s]{%s}\n' %
            ('<' + anim + '>' if len(anim) > 0 else '', props, name))

def latexstringify(x):
    result = []
    def go(key, val, format, meta):
        if key == 'Str':
            result.append(val)
        elif key == 'Code':
            result.append(val[1])
        elif key == 'Math':
            result.append('$' + val[1] + '$')
        elif key == 'LineBreak':
            result.append(" ")
        elif key == 'Space':
            result.append(" ")
        elif key == 'RawInline' and val[0] == 'tex':
            result.append(val[1])
    pf.walk(x, go, "", {})
    return ''.join(result).replace('%', '\\%')

# Supported syntax:
#   ![*<anim>{option}caption]({options}figure,{options}figure...): figures
#
#     *: starred figure environment (normally spans 2 columns)
#     <anim>: beamer animation specification
#     <option>: latex figure options, use the shortcuts `h` (horizontal fill),
#     `v` (vertical fill), `f` (fill) and `s` (slide fill) to do the Right Thing
#
#     If multiple animation/option settings are defined next to the caption,
#     they get spread across the figures. Paragraphs that only consist of
#     figures with the same caption get collapsed into one float.
#
# Examples:
#   ![]{figure}: basic figure, no float
#   ![caption]{figure}: basic figure, put into a float
#   ![*caption]{figure}: basic figure, put into a column-spanning float
#   ![{options}caption]{figure}: basic figure in float, custom options
#   ![{options}caption]{figure1,figure2}: two figures in one float, custom options for all
#   ![{options1}{options2}caption]{figure1,figure2}: two figures in one float, custom options per figure
#   ![caption]{{options1}figure1,{options2}figure2}: two figures in one float, custom options per figure
#   ![<1><2>caption]{figure1,figure2}: two figures in one float, with animation
#   ![<1><2>caption]{figure1}![<1><2>caption]{figure2}: two figures with same caption in one paragraph get collapsed into one float

class HeaderWatcher:
    def __init__(self):
        self._sections = []

    def update(self, k, v, f, m):
        if k == 'Header':
            unnumbered = pf.Header(v[0], ('', ['unnumbered'], []), v[2])
            if v[0] == 1:
                self._sections = [unnumbered]
            elif v[0] == 2:
                self._sections = [self._sections[0], unnumbered]

    def betweenframes(self, s):
        return self._sections + [s]

class ImageWalker:
    def __init__(self):
        self._watcher = HeaderWatcher()

    def filter(self, k, v, f, m):
        self._watcher.update(k, v, f, m)
        if k == 'Image' and v[1][1] == 'fig:':
            return Image(v, f, m).render(self._watcher, True)
        if k == 'Para' and all(vv['t'] in ['Image', 'Space'] for vv in v):
            images = [Image(vv['c'], f, m) for vv in v if vv['t'] == 'Image']
            if len(images) > 0 and images[0].merge(images[1:]):
                return images[0].render(self._watcher, False)

class Image:
    def __init__(self, v, f, m):
        if len(v) > 2: # pandoc >=1.16
            v = v[1:]
        self._figtype = 'figure'
        self._rawcaption = latexstringify(v[0])
        self._caption = ''
        self._captionanims = []
        self._captionoptions = []
        self._anims = []
        self._options = []
        self._filenames = []

        self._parse_caption(self._rawcaption)
        self._parse_filenames(v[1][0].replace('%20', ' '))

        self._anims = self._spread(self._captionanims, self._anims)
        self._options = self._spread(self._captionoptions, self._options)

    def render(self, watcher, inline):
        result = []
        betweenframes = False
        for i, f in enumerate(self._filenames):
            anim = self._anims[i]
            [options, slide] = self._mangleoptions(self._options[i])
            if slide:
                result.append(li('\\slidefig{%s}{%s}' % ('<' + anim + '>' if len(anim) > 0 else '', f)))
                betweenframes = True
                continue
            if i == 0 and len(self._caption) > 0:
                result.append(li('\\begin{%s}\n' % self._figtype))
            if i == 0 and len(self._caption) == 0 and not inline:
                result.append(li('{\\centering'))
            result.append(fig(f, options, anim))
            if i + 1 == len(self._filenames) and len(self._caption) > 0:
                result.extend([li('\\caption{'), li(self._caption), li('}\n')])
                result.append(li('\\end{%s}' % self._figtype))
            if i + 1 == len(self._filenames) and len(self._caption) == 0 and not inline:
                result.append(li('\par}'))
        if inline:
            if betweenframes:
                return pf.Str('Unable to return paragraph when in inline mode')
            return result
        result = pf.Para(result)
        return watcher.betweenframes(result) if betweenframes else result

    ''' Merge consecutive images with the same caption, recalculate anims and options '''
    def merge(self, others):
        if any(self._rawcaption != o._rawcaption for o in others):
            return False
        for o in others:
            self._anims.extend(o._anims)
            self._options.extend(o._options)
            self._filenames.extend(o._filenames)
        self._anims = self._spread(self._captionanims, self._anims)
        self._options = self._spread(self._captionoptions, self._options)
        return True

    def _spread(self, tospread, pattern):
        if len(tospread) == 0:
            return pattern
        if len(tospread) == 1:
            return [tospread[0]] * len(pattern)
        return [tospread[i] if i < len(tospread) else p for i, p in enumerate(pattern)]

    def _mangleoptions(self, o):
        [o, slide] = re.subn(r'(^|,)s($|,)', '', o)
        o = re.sub(r'(^|,)h($|,)', r'\1width=\\textwidth\2', o)
        o = re.sub(r'(^|,)v($|,)', r'\1height=0.72\\textheight\2', o)
        o = re.sub(r'(^|,)f($|,)', r'\1width=\\textwidth,height=0.72\\textheight,keepaspectratio\2', o)
        return [o, slide > 0]

    def _parse_caption(self, v):
        pos = 0
        l = len(v)
        while pos < l:
            [pos] = self._parse_captionpart(v, pos, l)

    def _parse_captionpart(self, v, pos, l):
        if pos < l and v[pos] == '*':
            self._figtype = 'figure*'
            return [pos + 1]  # +1 because of *
        if pos < l and v[pos] == '<':
            [pos, anim] = self._parse_anim(v, pos + 1, l)  # +1 because of initial <
            self._captionanims.append(anim)
            return [pos]
        if pos < l and v[pos] == '{':
            [pos, option] = self._parse_option(v, pos + 1, l)  # +1 because of initial {
            self._captionoptions.append(option)
            return [pos]
        self._caption = v[pos:]
        return [l]

    def _parse_filenames(self, v):
        pos = 0
        l = len(v)
        while pos < l:
            [pos]  = self._parse_filename(v, pos, l)

    def _parse_filename(self, v, pos, l):
        if pos < l and v[pos] == '<':
            [pos, anim] = self._parse_anim(v, pos + 1, l)  # +1 because of initial <
        else:
            anim = ''
        if pos < l and v[pos] == '{':
            [pos, option] = self._parse_option(v, pos + 1, l)  # +1 because of initial {
        else:
            option = ''
        [pos, name] = self._parse_name(v, pos, l)
        self._anims.append(anim)
        self._options.append(option)
        self._filenames.append(name)
        return [pos + 1] # +1 because of comma between items

    def _parse_anim(self, v, pos, l):
        startpos = pos
        while pos < l and v[pos] != '>':
            pos = pos + 1
        return [pos + 1, v[startpos:pos]] # +1 because of closing >

    def _parse_option(self, v, pos, l):
        startpos = pos
        braces = 0
        while pos < l and (v[pos] != '}' or braces > 0):
            if v[pos] == '{':
                braces = braces + 1
            elif v[pos] == '}':
                braces = braces - 1
            pos = pos + 1
        return [pos + 1, v[startpos:pos]] # +1 because of closing }

    def _parse_name(self, v, pos, l):
        startpos = pos
        while pos < l and v[pos] != ',':
            pos = pos + 1
        return [pos, v[startpos:pos]]

