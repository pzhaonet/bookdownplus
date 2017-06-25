# R package bookdownplus: an R package for writing Articles, Mails, Guitar Chords, Chemical Molecular Formulae and Equations with R bookdown

# Introduction

The R package `bookdownplus` (Zhao 2017) is an extension of `bookdown` (Xie 2016). It is a collection of
multiple templates on the basis of LaTeX, which are tailored so that I can work happily under the umbrella of `bookdown`. `bookdownplus` helps you write academic journal articles, guitar books, chemical equations, mails, calendars, and diaries.

# Features

`bookdownplus` extends the features of `bookdown`, and simplifies the procedure. Users only have to choose a template, clarify the book title and author name, and then focus on writing the text. No need to struggle in YAML and LaTeX. 

With `bookdownplus` users can

-   record guitar chords,
-   write a mail in an elegant layout,
-   write a laboratory journal, or a personal diary,
-   draw a monthly or weekly or conference calendar,
-   and, of course, write academic articles in your favourite way,
-   with chemical molecular formulae and equations,
-   even in Chinese,
-   and more wonders will come soon.

Full documentation can be found in the book [R bookdownplus Textbook](https://bookdown.org/baydap/bookdownplus). The webpage looks so-so, while the [pdf file](https://bookdown.org/baydap/bookdownplus/bookdownplus.pdf) might give you a little surprise.  

# Quick start

Although this section might not be the latest version, the general idea won't change. Please see [R bookdownplus Textbook](https://bookdown.org/baydap/bookdownplus) to keep up with the update.

## Preparation

Before starting, you have to install R, RStudio, bookdown package, and
other software and packages (i.e. Pandoc, LaTeX, rmarkdown, rticle,
knitr, etc.) which bookdown depends on. See the official [manual](https://bookdown.org/yihui/bookdown/) of
bookdown for details. Additionally, if you want to produce a poster, phython must be installed before using, and the path of phython might have to be added to the environmental variables for Windows users.

## Installation

```
install.package("bookdownplus")
# or
devtools::install_github("pzhaonet/bookdownplus")
```

## Generate demo files

Run the following codes, and you will get some files (e.g. `index.Rmd`, `body.Rmd`, `bookdownplus.Rproj`) and folders in your working directory.

```
getwd() # this is your working directory. run setwd() to change it.
bookdownplus::bookdownplus()
```

## Build a demo book

Now open `bookdownplus.Rproj` with RStudio, and press `ctrl+shift+b` to compile it. Your will get a book file named `*.pdf` in `_book/`folder.

## Write your own
Write your own text in `index.Rmd` and `body.Rmd`, and build your own lovely book.

## More outputs

By default, the book is in a pdf file. From 'bookdownplus' 1.0.3, users can get more output formats, including 'word', 'html' and 'epub'. Run:

```
bookdownplus::bookdownplus(template = 'article', more_output = c('html', 'word', 'epub'))
```

## Recommendations

I have been developing some other packages, which bring more features into 'bookdown', such as:

- [mindr](https://github.com/pzhaonet/mindr) (Zhao 2017), which can extract the outline of your book and turn it into a mind map, and

- [pinyin](https://github.com/pzhaonet/pinyin) (Zhao 2017), which can automatically generate ['{#ID}'](https://bookdown.org/yihui/bookdown/cross-references.html) of the chapter headers even if there are Chinese characters in them.

Both of them have been released on CRAN and can be installed via `install.packages('mindr')` and `install.packages('pinyin')`.


Enjoy your bookdowning!



## Showcase


![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_article.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_article_mdpi.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_article_zh.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_calendar.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_chemistry.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_discussion.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_guitar.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_journal.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_mail.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_nte_zh.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_poem.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_thesis_classic.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_thesis_mypku.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_thesis_ubt.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_thesis_zju.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_yihui_demo.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_yihui_mini.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_yihui_zh.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/ins/showcase/bookdownplus_poster.jpg)


## Updates


- 2017-06-24. **1.1.0.** More templates! See `help(bookdownplus)`
  - 'discussion', for academic article in discussion format.
  - 'thesis_mypku', in Chinese, the master thesis template I used more than ten years ago.
  - 'nte_zh', in Chinese, for novels.
  - 'mail' template updates:
    - more styles,
	- more themes.
- 2017-06-23. **1.0.3.** 
  - Fixed a bug of thesis_classic. 
  - Switched off warnings when creating folders.
  - Options to export epub, html, and word documents.
- 2017-06-21. **1.0.2.** [Released on CRAN](https://cran.r-project.org/web/packages/bookdownplus/index.html)!
- 2017-06-21. **1.0.2.** Resubmitted to CRAN!
- 2017-06-21. **1.0.1.** Submitted to CRAN!
- 2017-06-14. **0.0.1.** A bug fixed.
- 2017-05-15. **0.0.0.** A very preliminary version.


# License

Copyright 2017 [Peng Zhao](http://pzhao.org).

Released under the [MIT](https://github.com/pzhaonet/bookdown-plus/blob/master/LICENSE.md) license.
