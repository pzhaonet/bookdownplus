bookdownplus: an R package for writing varied types of books and documents, such as academic articles, mails, guitar chords, chemical melecular formulae, with R bookdown
=========================================================================================================================================================================

 ![CRAN downloads](http://cranlogs.r-pkg.org/badges/grand-total/bookdownplus)

Introduction
============

The R package [`bookdownplus`](https://cran.r-project.org/web/packages/bookdownplus) (Zhao 2017a) is an extension of `bookdown` (Xie 2016). It is a collection of multiple templates on the basis of LaTeX, which are tailored so that I can work happily under the umbrella of `bookdown`. `bookdownplus` helps you write academic journal articles, guitar books, chemical equations, mails, calendars, and diaries.

Features
========

`bookdown` is not easy for beginners. Try reading the official manual of ['bookdown'](https://bookdown.org/yihui/bookdown/). If you are able to build your own book in one hour, I am sure you are a genius and please send me a postcard with your signature. An R beginner might be confused or depressed in struggling in the flood of LaTeX, YAML, Markdown, Pandoc, etc. It would be a pity if users stop their steps at the door and give up the courage of entering the wonderful world of `bookdown`.

`bookdownplus` is the easiest shortcut to the world of `bookdown`. With **just one single command** users can get a demo book (or multiple demo books) in .pdf or .doc, or even more formats (see the quick start section). `bookdownplus` extends the features of `bookdown`, and simplifies the procedure. Users only have to choose a template, clarify the book title and author name, and then focus on writing the text. No need to struggle in YAML and LaTeX.

With `bookdownplus` users can

-   write a mail in an elegant layout,
-   write a laboratory journal, or a personal diary,
-   draw a monthly or weekly or conference calendar,
-   and, of course, write academic articles in your favourite way,
-   with chemical molecular formulae and equations,
-   even in Chinese,
-   record guitar chords,
-   and more wonders will come soon.

Full documentation can be found in the book [R bookdownplus Textbook](https://bookdown.org/baydap/bookdownplus). The webpage looks as good as other books, while the [pdf file](https://bookdown.org/baydap/bookdownplus/bookdownplus.pdf) might give you a little surprise.

Quick start
===========

Preparation
-----------

Before starting, you have to install 'R', 'RStudio', 'bookdown' package, and other software and packages (i.e.'Pandoc', 'LaTeX', 'rmarkdown', 'rticle', 'knitr', etc.) which 'bookdown' depends on. See the [official manual of 'bookdown'](https://bookdown.org/yihui/bookdown/) for details. A brief list is as follows:

1.  [Download R](https://cran.r-project.org) and install it.

2.  [Download RStudio](https://www.rstudio.com/products/rstudio/download/) and install it.

3.  [Download LaTeX](http://www.ctex.org/CTeXDownload) and install it.

4.  [Download Pandoc](http://pandoc.org/installing.html) and install it.

5.  Run RStudio. Type the following codes in the top-left panel to install 'bookdown' and 'servr' packages:

``` r
install.packages('bookdown')
install.packages('servr')
```

Additionally, if you want to produce a poster, phython must be installed before using, and the path of phython might have to be added to the environmental variables for Windows users. Details can be found in the instruction of [kuleuven-templates](https://github.com/exporl/kuleuven-templates), which is the origin of the 'poster' template.

Installation
------------

``` r
# the development version from GitHub (recommended)
devtools::install_github("pzhaonet/bookdownplus")
# or the stable version from CRAN
install.package("bookdownplus")
```

Recently I have been updating `bookdownplus` frequently, while the policy of CRAN only allows one update every one or two months at most. Therefore the development version is highly recommended.

Generate a demo book
--------------------

Firstly check your working directory (`getwd()`) and make sure that it is empty. `bookdownplus` will generate lots of files. An empty folder as a working directory is highly recommended. If you don't know how to change your working directory with R command, you can use RStudio to create a new project (File -- New Project - New Directory -- Empty Project) and work always in this project.

Run the following codes:

``` r
require(bookdownplus)
```

``` r
bookdownplus()
```

Although there are many arguments for `bookdownplus()`, you can simply ignore them and they will use their default values, if you use 'bookdownplus' package for the first time.

Now a demo file named `*.pdf` in `_book/` folder in your working directory is generated automatically. Open it with any pdf viewer so as to get an impression.

Write your own book
-------------------

You can see some other files (e.g. `index.Rmd`, `body.Rmd`, `bookdownplus.Rproj`) and folders. Write your own texts in `body.Rmd` and revise the author and the book title in `index.Rmd`. You can use RStudio or any other text editor (but please don't use Microsoft Word, believe it or not).

After writing some texts, open `bookdownplus.Rproj` with RStudio, and press `ctrl+shift+b` to build your own lovely book.

More output formats
-------------------

By default, the book is built in a pdf file and a md file. From 'bookdownplus v1.0.3', users can get more output formats, including word, html and epub. From 'bookdownplus v1.2.0', uses can see the available output formats by running:

``` r
more_output()
```

    ## [1] "word_document2" "html_document2" "epub_book"      "gitbook"

You can specify the `more_output` argument in the `bookdownplus()` function:

``` r
bookdownplus(more_output = more_output())
```

Then all the required output files are in `_book/` folder.

More templates
--------------

By default, the book is built from the 'theis\_classic' template. From 'bookdownplus v1.2.0', uses can see the available templates by running:

``` r
template()
```

    ##  [1] "article"         "article_mdpi"    "article_zh"     
    ##  [4] "calendar"        "chemistry"       "chemistry_zh"   
    ##  [7] "discussion"      "guitar"          "journal"        
    ## [10] "mail"            "nte_zh"          "poem"           
    ## [13] "thesis_classic"  "thesis_mypku_zh" "thesis_ubt"     
    ## [16] "thesis_zju_zh"   "yihui_demo"      "yihui_mini"     
    ## [19] "yihui_zh"        "poster"

A template with a name ended with '\_zh' means it support Chinese characters. To list all these Chinese templates, run:

``` r
grep('_zh$', template(), value = TRUE)
```

    ## [1] "article_zh"      "chemistry_zh"    "nte_zh"          "thesis_mypku_zh"
    ## [5] "thesis_zju_zh"   "yihui_zh"

You can specify the `template` argument in the `bookdownplus()` function:

``` r
bookdownplus(template = template()[1])
```

Then all the required output files are in `_book/` folder.

Magic tricks
------------

Now it is time to witness the miracles. With the following magic tricks you will see what bookdownplus can do.

**Magic I**

Chinese users can run the following codes, and go and have a coffee break. When you come back, you will get 19 demo books generated from available tempaltes, each in .pdf, .doc, .html, and .epub formats, in `_book/`:

``` r
for (i in template()[1:19]) bookdownplus(template = i, more_output = more_output()[1:3])
```

Non-Chinese users might encounter some errors because their computers do not support Chinese characters in the demo books. Instead, run the following codes, which exclude the Chinese templates:

```r
for (i in template()[-c(grep('_zh$', template()), 20)]) 
  bookdownplus(template = i, more_output = more_output()[1:3])
```


**Magic II**

Run the following codes. You will get all the demo files for different fonts, themes and styles from the 'mail' template:

``` r
for (mf in mail_font()) {
  for (ms in mail_style()) {
    for (mt in mail_theme()) {
      bookdownplus(template = 'mail', 
      mail_style = ms, 
      mail_font = mf, 
      mail_theme = mt, 
      output_name = paste('mail', ms, mf, mt, sep = '_'))
    }
  }
}
```

Recommendations
---------------

I have been developing some other packages, which bring more features into 'bookdown', such as:

-   [mindr](https://cran.r-project.org/web/packages/mindr) (Zhao 2017b), which can extract the outline of your book and turn it into a mind map, and

-   [pinyin](https://cran.r-project.org/web/packages/pinyin) (Zhao 2017c), which can automatically generate ['{\#ID}'](https://bookdown.org/yihui/bookdown/cross-references.html) of the chapter headers even if there are Chinese characters in them.

Both of them have been released on CRAN and can be installed via `install.packages('mindr')` and `install.packages('pinyin')`.

Enjoy your bookdowning!

Create Your Own Templates
-------------------------

`bookdownplus` provides around 20 templates (Version 1.2.0) and more will be included in the future. I am not an expert in LaTeX but I have successfully created these templates. It means that creating a LaTeX template does not require much knowledge in LaTeX. If you know the general workflow of LaTeX, and study these 'bookdownplus' templates carefully, and read Chapter 4 of the [official manual of 'bookdown'](https://bookdown.org/yihui/bookdown/), you will get the idea of how to create your own templates.

Here is some hints from my experience on creating a new template from am existing LaTeX template:

-   Find a nice LaTeX template. There are many websites that provide free LaTeX templates. You can download one you like most. Those with good documentations and comments are highly recommended.

-   Compile the LaTeX template file to make sure that it can work fine and produce the right pdf file. You could either use command lines or use some software like TexStudio to compile it. You could send to me this template with its full documentation and your pdf file, if you do not want to continue. I would try tailoring it into 'bookdownplus' but it is not guaranteed. It depends on my time and mood. Thus I recommend you to be brave and continue the next steps.
-   Cut the template into 'template\_yours.tex' and 'index.Rmd' in the following way:
-   The main body of the LaTeX are the part between `\begin{document}` and `\end{document}`. Replace the main body with `$body$`, which will be filled with 'body.Rmd'. You can use any 'body\*.Rmd' created by 'bookdownplus'.
-   Use any 'index.Rmd' created by 'bookdownplus' and modify the name of the LaTex template in 'index.Rmd'.

-   If the LaTeX template is simple enough, now you may build this template book with 'bookdown'.

-   Usually it won't work. A good-looking LaTeX template is mostly complicated, especially those in Chinese. Probably you have to modify the preamble, pick out some parts and save them and specify them in 'index.Rmd'. See the official [manual of 'bookdown'](https://bookdown.org/yihui/bookdown/yaml-options.html).

-   If you can successfully build your book with your new template, congratulations. It would be appreciated if you could send me your 'index.Rmd', 'body.Rmd', 'template\_yours.tex' and other related files. I will add them into 'bookdownplus' templates and add your name into the contributor list.

Let's build a 'bookdownplus' template library!

Showcase
--------

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_article.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_article_mdpi.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_article_zh.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_calendar.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_chemistry.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_discussion.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_guitar.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_journal.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_mail.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_nte_zh.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_poem.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_thesis_classic.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_thesis_mypku.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_thesis_ubt.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_thesis_zju.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_yihui_demo.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_yihui_mini.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_yihui_zh.jpg)

![](https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/inst2/showcase/bookdownplus_poster.jpg)

Updates
-------

- 2017-11-24. **v1.4.0**. Structure changed. Minor bugs fixed. More templates.
  - Template files organized much better. Flexible of adding new templates.
  - Four more templates:
    - 'yihui\_crc', for writing a book of Chapman & Hall, by Yihui Xie
	- 'thesis\_pku\_zh', in Chinese, for thesis of Peking University, from Casper Ti. Vector
	- 'nonpar', by Eduardo García Portugués,
	- 'dnd_dev', something I don't know.
- 2017-10-10. **v1.3.2**. Minor bugs fixed, one more argument, package size reduced
  - Argument `rproj` added to `bookdownplus()` function so that users can avoid creating an .Rproj file automatically.
  - 'fonts' folder removed so that the package size is smaller than 5 MB. The 'fonts' folder can be downloaded automatically from github repo if necessary.
- 2017-09-22. **v1.3.1.** Some minor bugs fixed. Markdown file produced besides pdf as default.
- 2017-07-19. **v1.3.0.** Updated on CRAN. See the [release note](https://github.com/pzhaonet/bookdownplus/releases/tag/v1.3).
- 2017-06-30. **v1.2.2.** Template names. Poster themes. A bug fixed.
  - A template name ended with `_zh` means this template supports Chinese characters.
  - Poster themes:
    - More themes added: `ice` and `ocean`.
    - New function `poster_theme()` which lists available poster themes.
  - ​A bug in thesis_classic fixed.
- 2017-06-27. **v1.2.1.** Argument `output_name` added. Then 
- 2017-06-26. **v1.2.0.** Easier, faster, and more functions.
  - Easier and faster:
    - `bookdownplus()` can render the demo files automatically. You don't have to open a .Rproj file to generate the template files any more!
    - If you don't like the automatic building, you can use the argument `render = FALSE` in `bookdownplus()` to switch it off.
  - New functions:
    - `more_output()`: display available output formats besides pdf\_book
    - `template()`: display available templates
    - `mail_bodysize()`: display available fontsize for mail body
    - `mail_font()`: display available fonts for mail body
    - `mail_fontsize()`: display available fontsize for mail template
    - `mail_style()`: display available styles for mail template
    - `mail_theme()`: display available themes for mail template
- 2017-06-24. **v1.1.0.** More templates! See `help(bookdownplus)`
  - Templates:
    - 'discussion', for academic article in discussion format.
    - 'thesis\_mypku', in Chinese, the master thesis template I used more than ten years ago.
    - 'nte\_zh', in Chinese, for novels.
  - 'mail' template updates:
    - more styles,
    - more themes.
- 2017-06-23. **v1.0.3.**
  - Fixed a bug of thesis\_classic.
  - Switched off warnings when creating folders.
  - Options to export epub, html, and word documents.
- 2017-06-21. **v1.0.2.** [Released on CRAN](https://cran.r-project.org/web/packages/bookdownplus/index.html)!
- 2017-06-21. **v1.0.2.** Resubmitted to CRAN!
- 2017-06-21. **v1.0.1.** Submitted to CRAN!
- 2017-06-14. **v0.0.1.** A bug fixed.
- 2017-05-15. **v0.0.0.** A very preliminary version.
License
=======

Copyright 2017 [Peng Zhao](http://pzhao.org).

Released under the [MIT](https://github.com/pzhaonet/bookdown-plus/blob/master/LICENSE.md) license.

References
==========

Xie, Yihui. 2016. *Bookdown: Authoring Books and Technical Documents with R Markdown*. Boca Raton, Florida: Chapman; Hall/CRC. <https://github.com/rstudio/bookdown>.

Zhao, Peng. 2017a. *Bookdownplus: Generate Varied Books and Documents with R ’Bookdown’ Package*. <https://CRAN.R-project.org/package=bookdownplus>.

———. 2017b. *Mindr: Convert Files Between Markdown or Rmarkdown Files and Mindmaps*. <https://github.com/pzhaonet/mindr>.

———. 2017c. *Pinyin: Convert Chinese Characters into Pinyin*. <https://github.com/pzhaonet/pinyin>.
