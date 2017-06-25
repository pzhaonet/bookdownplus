#' Create demo files for building books with R bookdown package.
#'
#' @param template character. Choose a template for your book or doc. The default template is 'thesis_classic'. Available templates are:
#' - 'article', academic article,
#' - 'article_mdpi',   academic article by mdpi,
#' - 'article_zh', academic article in Chinese,
#' - 'calendar',  monthly or weekly calendar,
#' - 'chemistry',   book with chemical molecular formulae and equations
#' - 'chemistry_zh', chemistry book in Chinese,
#' - 'discussion', article in discussion format,
#' - 'guitar',  book with guitar chords,
#' - 'journal', laboratory journal or personal diary,
#' - 'mail', personal or business mail,
#' - 'nte_zh', a template from Nothing to envy, in Chinese
#' - 'poem', poem book,
#' - 'thesis_classic' (default), classic thesis,
#' - 'thesis_mypku',  thesis of my Peking Uni., in Chinese,
#' - 'thesis_ubt',  thesis of University of Bayreuth,
#' - 'thesis_zju',  thesis of Zhejiang Uni., in Chinese,
#' - 'yihui_demo',  the original demo book by Yihui Xie,
#' - 'yihui_mini',  a mini demo book by Yihui Xie,
#' - 'yihui_zh', the demo in Chinese by Yihui Xie,
#' - 'article2_zh', article in two columns in Chinese, not ready yet,
#' - 'poster', poster.
#' @param title character. book title.
#' @param author character. book author.
#' @param more_output optional output formats. NULL(default) or c('word', 'html', 'epub')
#'
#' @param mail_opening character. opening of the mail, such as 'Dear Thomas, '
#' @param mail_closing  character. closing of the mail, such as 'Yours, '
#' @param mail_from_address character. sender's address (Street and No.) for mail template
#' @param mail_from_town  character. sender's town for mail template
#' @param mail_from_phone character. sender's phone number for mail templae
#' @param mail_from_mobile character. sender's mobile phone number for mail templae
#' @param mail_from_fax character. sender's fax number for mail templae
#' @param mail_from_email character. sender's email for mail template
#' @param mail_to_who character. recipient's name for mail template
#' @param mail_to_affiliation character. recipient's affiliation (institute, university, etc.) for mail template
#' @param mail_to_address character. recipient's address (Street and No.) for mail template
#' @param mail_to_town character. recipient's town for mail template
#' @param mail_date character. The date appearing in the mail
#' @param mail_style character. The mail style for mail template. Available styles are:
#' - 'casual' (default),
#' - 'classic',
#' - 'oldstyle', and
#' - 'banking'
#' @param mail_theme character. The mail theme for mail template. Available themes are:
#' - 'blue' (default),
#' - 'orange',
#' - 'green',
#' - 'red',
#' - 'purple',
#' - 'grey', and
#' - 'black'
#' @param mail_font character. The font of the body for mail template. Available fonts are:
#' - 'sffamily' (default), or
#' - 'calligra'
#' @param mail_fontsize character. fontsize of the mail for mail template. Available sizes are:
#' - '10pt',
#' - '11pt', and
#' - '12pt' (default)
#' @param mail_bodysize character. fontsize of the mail body for mail template. Available sizes are:
#' - 'tiny',
#' - 'scriptsize',
#' - 'footnotesize',
#' - 'small',
#' - 'normalsize' (default),
#' - 'large',
#' - 'Large',
#' - 'LARGE',
#' - 'huge',
#' - 'Huge'.
#'
#' @param poster_email character. author's email for poster template
#' @param poster_institute character. for poster template
#' @param poster_longinstitute  character. for poster template
#' @param poster_web   character. for poster template
#' @param poster_logo  character. The path of the logo image. for poster template
#' @param poster_backimg  character. The path of the background image. for poster template
#' @param poster_bibliofiles  character. The path of the bib file for poster template
#' @param poster_theme  character. theme for poster template. available themes are
#' - 'eco' (default),
#' - 'ocean',
#' - 'rose'.
#'
#' @return demo files to build with bookdown
#' @export
#' @examples
#' bookdownplus()
#' bookdownplus(template = 'article')
#' @description
#' Technically, `bookdownplus` is a collection and selector of R bookdown templates. `bookdownplus` helps you write academic journal articles, guitar books, chemical equations, mails, calendars, and diaries. R `bookdownplus` extends the features of `bookdown`, and simplifies the procedure. Users only have to choose a template, clarify the book title and author name, and then focus on writing the text. No need to struggle in YAML and LaTeX.
#'
#' Full documentation of `bookdownplus` can be found in the book [R bookdownplus Textbook](https://bookdown.org/baydap/bookdownplus). Here is a quick-start procedure.
#'
#' - Before starting, you have to install `bookdown` package, and other software and packages (i.e. 'Pandoc', 'LaTeX', `rmarkdown`, `rticle`, `knitr`, etc.) which `bookdown` depends on. See the [official manual of `bookdown`](https://bookdown.org/yihui/bookdown/) for details. Additionally, if you want to produce a poster, phython must be installed before using, and the path of phython might have to be added to the environmental variables for Windows users.
#'
#' - Run `bookdownplus()` and specify the template with `template` argument, You will get some files (e.g. `index.Rmd`, `body.Rmd`, `bookdownplus.Rproj`) and folders in your working directory. Although there are many other arguments for `bookdownplus()`, you can simply ignore them if you use `bookdownplus` package for the first time.
#' - Open `bookdownplus.Rproj` with RStudio. Now press `ctrl+shift+b` to build it. Your will get a book file named `*.pdf` in `_book/` folder.
#' - Write your own text in `index.Rmd` and `body.Rmd`, and build your own lovely book.
bookdownplus <- function( ######
  template = 'thesis_classic',
  more_output = NULL,
  # more_output = c('html', 'word', 'epub'),
  title ='R bookdownplus',
  author = 'Peng Zhao',

  # for mail template only
  mail_from_address = '15 Robin Hood Lane',
  mail_from_town = '11758  Massapequa, Long Island, New York',
  mail_from_phone = '31415926',
  mail_from_mobile = '31415927',
  mail_from_fax = '31415928',
  mail_from_email = 'dapengde@live.com',
  mail_to_who = 'recipient',
  mail_to_affiliation = 'University of Innsbruck',
  mail_to_address = 'recipient address',
  mail_to_town = '100000 Beijing, China',
  mail_opening = 'Dear Sir or Madam,',
  mail_closing = 'Yours faithfully,',
  mail_date = '25 June, 2017',
  mail_style = c('casual', 'classic', 'oldstyle', 'banking')[1],
  mail_theme = c('blue', 'orange', 'green', 'red', 'purple', 'grey', 'black')[1],
  mail_font = c('sffamily', 'calligra ')[1],
  mail_fontsize = c('10pt', '11pt', '12pt')[3],
  mail_bodysize = c(
    'tiny', 'scriptsize', 'footnotesize', 'small', 'normalsize',
    'large', 'Large', 'LARGE', 'huge','Huge') [5],

  # for poster template only
  poster_email = 'pzhao@pzhao.net',
  poster_institute = 'Institute of Ecology, Univ. Innsbruck',
  poster_longinstitute = 'Institute of Ecology, University of Innsbruck, Austria',
  poster_web = 'pzhao.org',
  poster_logo = 'images/logo.png',
  poster_backimg = 'images/logo.png',
  poster_bibliofiles = 'bib/bib.bib',
  poster_theme = c('eco', 'ocean', 'rose')[1]) {

  ###### internal functions ######
  ### copy necessary files to the working directory
  copyfolder <- function(folder = 'images') {
    dir.create(folder,showWarnings = FALSE)
    mypath <- paste0(.libPaths(), '/bookdownplus/', folder)
    file.copy(from = dir(mypath[dir.exists(mypath)][1], full.names = TRUE), to = folder)
  }

  ###  define body file name, dependent on the template name
  bodyfile <- function(x) {
    if (x == 'article_zh') return('rmd/body_article_zh.Rmd')
    if (x == 'article2_zh') return('rmd/body_article_zh.Rmd')
    if (x == 'calendar') return('rmd/body_calendar.tex')
    if (x == 'chemistry') return('rmd/body_chemistry.Rmd')
    if (x == 'chemistry_zh') return('rmd/body_chemistry_zh.Rmd')
    if (x == 'guitar') return('rmd/body_guitar.Rmd')
    if (x == 'mail') return('rmd/body_mail.Rmd')
    if (x == 'journal') return('rmd/body_journal.Rmd')
    if (x == 'yihui_zh') return('rmd/body_yihui_zh.Rmd')
    if (x == 'thesis_classic') return('rmd/body_thesis_classic.Rmd')
    if (x == 'thesis_zju') return('rmd/body_thesis_zju.Rmd')
    if (x == 'thesis_mypku') return('rmd/body_thesis_mypku.Rmd')
    if (x == 'nte_zh') return('rmd/body_nte_zh.Rmd')
    if (x == 'discussion') return('rmd/body_discussion.Rmd')
    if (x == 'poem') return('rmd/body_poem.Rmd')
    'rmd/body.Rmd'
  }

  ### backup a file to backup/ folder, avoid overwriting it.
  backup <- function(filename, ifbackup = TRUE) {
    if (ifbackup) {
      if (file.exists(filename)) {
        filenamesplit <- strsplit(filename, '\\.')[[1]]
        filenamesplitl <- length(filenamesplit)
        tolength <- ifelse(filenamesplitl > 1, filenamesplitl - 1, 1)
        filenamepost <- filenamesplit[filenamesplitl]
        backupfile <- paste0('backup/', paste(filenamesplit[1:tolength], collapse = '_'), '-', format(Sys.time(), '%Y-%m-%d-%H-%M-%S'), '.', filenamepost)
        file.copy(filename, backupfile)
        message(paste(filename, 'exsits. Backuped to', backupfile, ':)'))
      } #else {
        #message(paste(filename, 'does not exist. No need to bakcup :)'))
      #}
    }
  }

  ###### copy folders and files to the working dir ######
  lapply(X = c('backup', 'bib', 'rmd', 'images', 'style','tex', 'fonts'), FUN = copyfolder)
  mypath <- paste0(.libPaths(), '/bookdownplus/proj/')
  file.copy(from = paste0(mypath[dir.exists(mypath)][1], 'bookdownplus'), to = 'bookdownplus.Rproj.')

  ###### prepare index.Rmd ######
  book_filename <- template
  index <- readLines(paste0('rmd/index_', template, '.Rmd'), encoding = 'UTF-8')
  index[grep('^title: "', index)] <- paste0('title: "', title, '"')
  index[grep('^author: "', index)] <- paste0('author: "', author, '"')
  # index[grep('titleshort: "', index)] <- paste0('titleshort: "', titleshort, '"')

  if (template == 'poster') {
    index[grep('^%% template=tex/poster.tex', index)] <- paste0('%% template=tex/poster_', poster_theme, '.tex')
  }
  backup('index.Rmd')
  writeLines(index, 'index.Rmd', useBytes = TRUE)

  if (template != 'poster') {

    ###### prepare _bookdown.yml, which defines the output filename of the book. ######
    filenameyml <- readLines('rmd/_bookdown.yml', encoding = 'UTF-8')
    filenameyml[grep('book_filename: ', filenameyml)] <- paste0('book_filename: ', book_filename)
    backup('_bookdown.yml')
    writeLines(filenameyml, '_bookdown.yml', useBytes = TRUE)

    ###### prepare _output.yml, which defines the output files of gitbook and epub formats. comment it if you only need pdf. ######
    backup('_output.yml')
    # file.copy('rmd/_output.yml', '_output.yml', copy.mode = FALSE, overwrite = TRUE)
    output <- readLines('rmd/_output.yml')
    if (!is.null(more_output)) {
      outputyml <- file("_output.yml","w")
      for (ic in more_output) {
        writeLines(readLines(paste0('rmd/_output_', ic, '.yml')), con = outputyml, sep= "\n")
      }
      close(outputyml)
      }
    ###### prepare body.Rmd ######
    bodydemo <- bodyfile(template)
    bodynew <- paste0('body', substr(bodydemo, nchar(bodydemo)-3, nchar(bodydemo)))
    backup('body.Rmd')
    file.copy(bodydemo, bodynew, copy.mode = FALSE, overwrite = TRUE)

    ###### exceptions ######

    ### article_zh needs an additional abstract.tex file
    if (template %in% c('article_zh', 'article2_zh')) {
      backup('abstract.tex')
      file.copy(paste0('tex/template_', template, '_abstract.tex'), 'abstract.tex', copy.mode = FALSE, overwrite = TRUE)
    }

    ### mail needs an additional template_mail.tex as a before_body part.
    if (template == 'mail') {
      tmail <- readLines('tex/template_mail.tex')
      # tmail[51] <- paste0('{\\bfseries ', author, '}\\\\[.35ex]')
      # tmail[53] <- paste0(from_address, '\\\\')
      # tmail[54] <- paste0(from_town, '\\\\[.35ex]')
      # tmail[55] <- paste0('\\Telefon~', from_phone, '\\\\')
      # tmail[56] <- paste0('\\Letter~\\href{mailto:', from_email, '}{', from_email, '}')
      #
      # tmail[61] <- paste0('{\\bfseries ', to_who, '}\\\\[.35ex]')
      # tmail[63] <- paste0(to_address, '\\\\')
      # tmail[64] <- paste0(to_town, '\\\\[.35ex]')
      #
      # tmail[78] <- paste0('{\\bfseries ', author, '}\\\\')
      # tmail[75] <- paste(switch(type, 'business' = '\\sffamily', 'personal' = '\\calligra' ),
      #                    fontsize, sep = '\\')
      tmail[9] <- paste0('\\documentclass[', mail_fontsize, ',a4paper,sans]{style/moderncv}')
      tmail[12] <- paste0('\\moderncvstyle{', mail_style, '}')
      tmail[13] <- paste0('\\moderncvcolor{', mail_theme, '}')
      tmail[27] <- paste0('\\name{', author, '}{}')
      tmail[29] <- paste0('\\address{', mail_from_address, '}{', mail_from_town,'}{}')
      tmail[30] <- paste0('\\phone[mobile]{', mail_from_mobile, '}')
      tmail[31] <- paste0('\\phone[fixed]{', mail_from_phone, '}')
      tmail[32] <- paste0('\\phone[fax]{', mail_from_fax, '}')
      tmail[33] <- paste0('\\email{', mail_from_email, '}')
      tmail[54] <- paste0('\\recipient{', mail_to_affiliation, '}{',mail_to_address, '\\\\', mail_to_town, '}')
      tmail[55] <- paste0('\\date{', mail_date, '}')
      tmail[56] <- paste0('\\opening{', mail_opening, '}')
      tmail[57] <- paste0('\\closing{', mail_closing, '}')
      tmail[59] <- paste0('\\', mail_font, '\\', mail_bodysize)
      writeLines(tmail, 'tex/template_mail_user.tex')
    }

    ### article_mdpi needs an additional bst file
    if (template == 'article_mdpi') {
      file.copy('style/mdpi.bst', 'mdpi.bst')
    }
  }
}
