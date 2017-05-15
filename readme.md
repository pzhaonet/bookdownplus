# R package bookdownplus: an R package for writing Articles, Mails, Guitar Chords, Chemical Molecular Formulae and Equations with R bookdown

# Introduction

`R bookdown+` is an extension of `R bookdown` (Xie 2016). It is a collection of
multiple templates on the basis of LaTeX, which are tailored so that I can work happily under the umbrella of `bookdown`. `R bookdown+` helps you write academic journal articles, guitar books, chemical equations, mails, calendars, and diaries.

# Features

`R bookdown+` extends the features of `bookdown`, and simplifies the procedure. Users only have to choose a template, clarify the book title and author name, and then focus on writing the text. No need to struggle in YAML and LaTeX. 

With `R bookdown+` users can

-   record guitar chords,
-   write a mail in an elegant layout,
-   write a laboratory journal, or a personal diary,
-   draw a monthly or weekly or conference calendar,
-   and, of course, write academic articles in your favourite way,
-   with chemical molecular formulae and equations,
-   even in Chinese,
-   and more wonders will come soon.

Full documentation can be found in the book [R bookdown+ Textbook](https://bookdown.org/baydap/bookdown-plus). The webpage looks so-so, while the [pdf file](https://bookdown.org/baydap/bookdown-plus/bookdown-plus.pdf) might give you a little surprise.  

# Quick start

Although this section might not be the latest version, the general idea won't change. Please see [R bookdown+ Textbook](https://bookdown.org/baydap/bookdown) to keep up with the update.

## Preparation

Before starting, you have to install R, RStudio, bookdown package, and
other software and packages (i.e. Pandoc, LaTeX, rmarkdown, rticle,
knitr, etc.) which bookdown depends on. See the official [manual](https://bookdown.org/yihui/bookdown/) of
bookdown for details. Additionall, if you want to produce a poster, phython must be installed before using, and the path of phython might have to be added to the environmental variables for Windows users.

Installation:

```
devtools::install_github("dapengde/bookdownplus")
```

Run the following codes, and you will get some files (e.g. `index.Rmd` and `body.Rmd`) and folders in your working directory.

```
getwd() # this is your working directory. run setwd() to change it.
bookdownplus::bookdownplus()
```

Now press `ctrl+shift+b` to compile it. Your will get a book file named `index.pdf` in `_book/`folder.

Write your own text in `index.Rmd` and `body.Rmd`, and build your own lovely book.

Have fun!

Still being developed.  Feel free to give your feedback to me!


## Showcase

- article


![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+article.jpg)

- article_mdpi1

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+article_mdpi.jpg)

- article_zh

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+article_zh.jpg)

- calendar

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+calendar.jpg)

- chemistry

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+chemistry.jpg)

- guitar

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+guitar.jpg)

- journal

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+journal.jpg)

- mail

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+mail.jpg)

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+mail2.png)

- poem

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+poem.jpg)

- thesis_classic

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+thesis_classic.jpg)

- thesis_ubt

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+thesis_ubt.jpg)

- thesis_zju

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+thesis_zju.jpg)

- yihui_demo

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+yihui_demo.jpg)

- yihui_mini

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+yihui_mini.jpg)

- yihui_zh

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+yihui_zh.jpg)

- poster

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+poster_ocean.jpg)

![](https://raw.githubusercontent.com/dapengde/bookdown-plus/master/showcase/bookdown+poster_eco.jpg)

## Updates

- 2017-05-15. **Version 0.0.0**. A very preliminary version.


# License

Copyright 2017 [Peng Zhao](http://pzhao.org).

Released under the [MIT](https://github.com/dapengde/bookdown-plus/blob/master/LICENSE.md) license.
