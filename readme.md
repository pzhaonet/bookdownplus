![CRAN downloads](http://cranlogs.r-pkg.org/badges/grand-total/bookdownplus)

![](https://bookdownplus.netlify.com/img/bookdownplus-logo.png)

## Introduction

The package [bookdownplus](https://cran.r-project.org/web/packages/bookdownplus) (Zhao 2017a) is an extension of R [bookdown](https://bookdown.org/yihui/bookdown/) (Xie 2016). It is a collection of multiple templates on the basis of LaTeX, which are tailored so that I can work happily under the umbrella of bookdown. bookdownplus helps you write academic journal articles, guitar books, chemical equations, mails, calendars, and diaries.

## Features

bookdown features the collaboration  of many fantastic tools. However, an R beginner might be confused or depressed in struggling in the flood of LaTeX, YAML, Markdown, Pandoc, etc. It would be a pity if users stop their steps at the door and give up the courage of entering the wonderful world of bookdown.

bookdownplus is the easiest shortcut to the world of bookdown. With **just one single command** users can get a demo book (or multiple demo books) in .pdf or .doc, or even more formats (see the quick start section). bookdownplus extends the features of bookdown, and simplifies the procedure. Users only have to choose a template, clarify the book title and author name, and then focus on writing the text. No need to struggle in YAML and LaTeX.

With bookdownplus users can

-   write academic journal articles and theses/dissertations,
-   write mails in an elegant layout,
-   write laboratory journals, or personal diaries,
-   draw monthly or weekly or conference calendars,
-   insert chemical molecular formulas and equations,
-   and guitar chords,
-   and more wonders are coming soon.

The website [bookdownplus gallery](https://bookdownplus.netlify.com) shows some samples that bookdownplus provides.

<!---
Full documentation can be found in the book [R bookdownplus Textbook](https://bookdown.org/baydap/bookdownplus). The webpage looks as elegant as other books, while the [pdf file](https://bookdown.org/baydap/bookdownplus/bookdownplus.pdf) might give you a little surprise.
-->

## Quick start

### Preparation

1.  Install [R](https://cran.r-project.org), [RStudio](https://www.rstudio.com/products/rstudio/download/). LaTeX(e.g. [MiKTeX](https://miktex.org/) or [TinyTeX](https://yihui.name/tinytex/). See the [official manual of ‘bookdown’](https://bookdown.org/yihui/bookdown/) for details. 

2.  Run RStudio. Type the following codes in the top-left panel to install ‘bookdown’ packages:

``` r
install.packages('bookdown')
```

### Installation

``` r
# the development version from GitHub (recommended)
devtools::install_github("pzhaonet/bookdownplus")
# or the stable version from CRAN
install.package("bookdownplus")
```

### Generate a demo book

Firstly check your working directory (`getwd()`) and make sure that it is empty. `bookdownplus` will generate lots of files. An empty folder as a working directory is highly recommended. If you don’t know how to change your working directory with R command, you can use RStudio to create a new project (File – New Project - New Directory – Empty Project) and work always in this project.

Run the following codes:

``` r
require(bookdownplus)
bd('ubt')
```

Now a demo dissertation for the University of Bayreuth  is generated in many formats in the `_book/` folder in your working directory. Open `_book/ubt.pdf`or other files so as to get an impression.

### Write your own book

`bd()` is a simplified function for demos. The main function of the bookdownplus package is:

```r
bookdownplus()
```
with multiple parameters. 

For example,

```
bookdownplus(template = 'ubt', render = TRUE)	
```

You can see some other files (e.g. `index.Rmd`, `body.Rmd`, `-bookdownplus.Rproj`) and folders. Write your own texts in `body.Rmd` and revise the author and the book title in `index.Rmd`. You can use RStudio or any other text editor (but please don’t use Microsoft Word).

After writing some texts, open `-bookdownplus.Rproj` with RStudio, and press `ctrl+shift+b` to build your own lovely book.

### More outputs

By default, the book is built in a .pdf file and an .md file. From ‘bookdownplus v1.0.3’, users can get more output formats, including word, html and epub. From ‘bookdownplus v1.2.0’, uses can see the available output formats by running:

``` r
get_output()
```

You can specify the `more_output` argument in the `bookdownplus()` function:

``` r
bookdownplus(more_output = get_output())
```

Then all the required output files are in `_book/` folder.


### More templates

By default, the book is built from the ‘ubt’ template. From ‘bookdownplus v1.2.0’, users can see the available templates by running:

``` r
get_template()
```

A template with a name ended with ’\_zh’ means that it supports Chinese characters. To list all these Chinese templates, run:

``` r
grep('_zh$', get_template()[, 'name'], value = TRUE)
```
You can specify the `template` argument in the `bookdownplus()` function:

``` r
bookdownplus(template = get_template()$name[1])
```

Then all the required output files are in `_book/` folder.

## Magic trick

Now it is time to witness the miracles. With the following magic trick you will see what bookdownplus can do.

Chinese users can run the following codes, and go and have a coffee break. When you come back, you will get more than 20 demo books generated from available templates, each in .pdf, .doc, .html, and .epub formats, in `_book/`:

``` r
bd()
```

Non-Chinese users might encounter some errors because their computers do not support Chinese characters in the demo books. Instead, run the following codes, which exclude the Chinese templates and the remote templates:

``` r
my_t <- get_template()
my_t <- my_t$name[my_t$location == 'local' & !grepl('_zh$', my_t$name)]
bd(my_t)
```

## Showcase

The website [bookdownplus gallery](https://bookdownplus.netlify.com) shows some samples that bookdownplus provides.

[![](https://github.com/pzhaonet/bookdownplus-web/raw/master/static/img/webshot.png)](https://bookdownplus.netlify.com)

## Share Your Own Templates

`bookdownplus` provides around 30 templates (Version 1.5.0). If you are willing to contribute your own bookdown templates to bookdownplus, just upload them to the [bookdownplus repo](https://github.com/pzhaonet/bookdownplus). They will be displayed in the [bookdownplus gallery](https://bookdownplus.netlify.com) automatically once accepted.

From the version 1.5, bookdownplus opens a widest-ever door to contributors. Here is how:

1. Make sure that your template works successfully with bookdown.
2. Prepare a folder in your working directory by running:

  ```r
  bookdownplus::share('your_template_name')
  ``` 
  
  Follow the instructions in each subfolder and create the required files. 
  - (Mandatory) 'your_template_name/demo.zip' is the compressed file from your bookdown project folder.
  - (Optional) 'your_template_name/showcase/' contains the sample files (e.g. pdf, image files). An image file 'cover.png' is recommended, which will be used as the cover image in the gallery.
  - (Optional) You could write a 'your_template/readme.txt' (in markdown syntax), which will be displayed as the text in the gallery.

3. Upload your template folder 'your_template_name/' in to '[upload/](https://github.com/pzhaonet/bookdownplus/tree/master/upload)' of the bookdownplus repo. 

4. Add the template information, including the template name, the contributor's name, and a brief introduction, into 'upload/-list.csv'.

5. Create a Pull Request to bookdownplus.

Wait for the response, and your template will be available in the gallery. Users can get it easily by clicking the ".zip" link in the gallery, or running

```
bookdownplus("your_template_name")
```


## Recommendations

I have been developing some other packages, which bring more features into ‘bookdown’, such as:

-   [mindr](https://cran.r-project.org/web/packages/mindr) (Zhao 2017b), which can extract the outline of your book and turn it into a mind map, and

-   [pinyin](https://cran.r-project.org/web/packages/pinyin) (Zhao 2017c), which can automatically generate [‘{\#ID}’](https://bookdown.org/yihui/bookdown/cross-references.html) of the chapter headers even if there are Chinese characters in them.

Both of them have been released on CRAN and can be installed via `install.packages('mindr')` and `install.packages('pinyin')`.

Enjoy your bookdowning!

Updates
-------

- 2019-01-25. **v1.5.5**. Users can define the destination directory for a new bookdown project.
- 2018-12-16. **v1.5.4**. Compatible with the book *[Learning R](https://xuer.dapengde.com)* (Zhao and Li, 2018).
- 2018-09-23. **v1.5.0**. Ready for contributions.
- 2018-09-22. **v1.4.8**. Open for contributors to upload new templates.
- 2018-09-21. **v1.4.7**. Codes simplified. One more template.
- 2018-06-10. **v1.4.6**. More templates:
  - cchess
  - dnd_dev
  - docsens
  - igo
  - musix
  - nonpar
  - rbasics
  - thesis_pku_zh
- 2018-06-03. **v1.4.5**. 'skak' template, for writing a chess diagram.
- 2018-05-10. **v1.4.4**. One more template, 'yihui\_crc', for writing a book of Chapman & Hall.
- 2018-02-05. **v1.4.3**. Bugs fixed.
  - `pandoc_args` changed from `--chapters` into `--top-level-division=chapter`
- 2017-11-24. **v1.4.0**. Structure changed. Minor bugs fixed. 
  - Template files organized much better. Flexible of adding new templates.
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
    - A bug in thesis_classic fixed.
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

Copyright 2018 [Peng Zhao](http://pzhao.org).

Released under the [MIT](https://github.com/pzhaonet/bookdown-plus/blob/master/LICENSE.md) license.

References
==========

Xie, Yihui. 2016. *Bookdown: Authoring Books and Technical Documents with R Markdown*. <https://github.com/rstudio/bookdown>.

Zhao, Peng. 2017a. *Bookdownplus: Generate Varied Types of Books and Documents with R ’Bookdown’ Package*. <https://CRAN.R-project.org/package=bookdownplus>.

———. 2017b. *Mindr: Convert Files Between Markdown or Rmarkdown Files and Mindmaps*. <https://CRAN.R-project.org/package=mindr>.

———. 2017c. *Pinyin: Convert Chinese Characters into Pinyin*. <https://CRAN.R-project.org/package=pinyin>.
