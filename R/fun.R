#' Available templates
#'
#' @param dataframe logical. FALSE by default. whether return a vector or a data frame.
#'
#' @return a vector or a dataframe displaying available templates.
#' @export
#'
#' @examples template()
template <- function(dataframe = FALSE){
  pckpath <- paste0(path.package('bookdownplus'), '/')
  temp <- gsub('.zip', '', dir(paste0(pckpath, 'zip/')))
  tempdf <- data.frame(i = 1:length(temp),
                       template = temp)
  if (dataframe) return(tempdf)
  return(temp)
}

#' Available output formats besides pdf_book
#'
#' @param dataframe logical. FALSE by default. whether return a vector or a data frame.
#'
#' @return a vector or a dataframe.
#' @export
#'
#' @examples more_output()
more_output <- function(dataframe = FALSE){
  temp <- c('word_document2',
            'epub_book',
            'gitbook',
            'html_document2')
  tempdf <- data.frame(i = 1:length(temp),
                       template = temp)
  if (dataframe) return(tempdf)
  return(temp)
}

#' Available styles for mail template
#'
#' @param dataframe logical. FALSE by default. whether return a vector or a data frame.
#'
#' @return a vector or a dataframe.
#' @export
#'
#' @examples mail_style()
mail_style <- function(dataframe = FALSE){
  temp <- c('casual', # (default),
            'classic',
            'oldstyle',
            'banking'
  )
  tempdf <- data.frame(i = 1:length(temp),
                       template = temp)
  if (dataframe) return(tempdf)
  return(temp)
}

#' Available themes for mail template
#'
#' @param dataframe logical. FALSE by default. whether return a vector or a data frame.
#'
#' @return a vector or a dataframe.
#' @export
#'
#' @examples mail_theme()
mail_theme <- function(dataframe = FALSE){
  temp <- c('blue', # (default),
            'orange',
            'green',
            'red',
            'purple',
            'grey', # and
            'black'
  )
  tempdf <- data.frame(i = 1:length(temp),
                       template = temp)
  if (dataframe) return(tempdf)
  return(temp)
}

#' Available fonts for mail body
#'
#' @param dataframe logical. FALSE by default. whether return a vector or a data frame.
#'
#' @return a vector or a dataframe.
#' @export
#'
#' @examples mail_font()
mail_font <- function(dataframe = FALSE){
  temp <- c('sffamily', # (default), or
            'calligra'
  )
  tempdf <- data.frame(i = 1:length(temp),
                       template = temp)
  if (dataframe) return(tempdf)
  return(temp)
}

#' Available fontsize for mail template
#'
#' @param dataframe logical. FALSE by default. whether return a vector or a data frame.
#'
#' @return a vector or a dataframe.
#' @export
#'
#' @examples mail_fontsize()
mail_fontsize <- function(dataframe = FALSE){
  temp <- c('10pt',
            '11pt',
            '12pt' #(default)
  )
  tempdf <- data.frame(i = 1:length(temp),
                       template = temp)
  if (dataframe) return(tempdf)
  return(temp)
}


#' Available fontsize for mail body
#'
#' @param dataframe logical. FALSE by default. whether return a vector or a data frame.
#'
#' @return a vector or a dataframe.
#' @export
#'
#' @examples mail_bodysize()
mail_bodysize <- function(dataframe = FALSE){
  temp <- c('tiny',
            'scriptsize',
            'footnotesize',
            'small',
            'normalsize', # (default),
            'large',
            'Large',
            'LARGE',
            'huge',
            'Huge'
  )
  tempdf <- data.frame(i = 1:length(temp),
                       template = temp)
  if (dataframe) return(tempdf)
  return(temp)
}

#' Available themes for poster templatemail body
#'
#' @param dataframe logical. FALSE by default. whether return a vector or a data frame.
#'
#' @return a vector or a dataframe.
#' @export
#'
#' @examples poster_theme()
poster_theme <- function(dataframe = FALSE){
  temp <- c('eco', # default
            'ocean',
            'rose',
            'night',
            'ice'
  )
  tempdf <- data.frame(i = 1:length(temp),
                       template = temp)
  if (dataframe) return(tempdf)
  return(temp)
}

#' Create demo files for building books with R bookdown package.
#'
#' @param template character. Choose a template for your book or doc. The default template is 'thesis_classic'. Available templates are (run `template()` for hints):
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
#' - 'thesis_mypku_zh',  thesis of my Peking Uni., in Chinese,
#' - 'thesis_ubt',  thesis of University of Bayreuth,
#' - 'thesis_zju_zh',  thesis of Zhejiang Uni., in Chinese,
#' - 'yihui_demo',  the original demo book by Yihui Xie,
#' - 'yihui_mini',  a mini demo book by Yihui Xie,
#' - 'yihui_zh', the demo in Chinese by Yihui Xie,
#' - 'poster', poster.
#' @param title character. book title.
#' @param author character. book author.
#' @param more_output optional output formats besides pdf_book, which can be (run `more_output()` for hints):
#' - NULL (default)
#' - 'word_document2'
#' - 'html_document2'
#' - 'epub_book'
#' - 'gitbook'
#' @param output_name chracter. the name of the output files. If NA (default), the template name will be used.
#' @param render logical. whether to render automatically
#' @param rproj logical. whether to created an .Rproj file automatically
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
#' @param mail_style character. The mail style for mail template. Available styles are (run `mail_style()` for hints):
#' - 'casual' (default),
#' - 'classic',
#' - 'oldstyle', and
#' - 'banking'
#' @param mail_theme character. The mail theme for mail template. Available themes are (run `mail_theme()` for hints):
#' - 'blue' (default),
#' - 'orange',
#' - 'green',
#' - 'red',
#' - 'purple',
#' - 'grey', and
#' - 'black'
#' @param mail_font character. The font of the body for mail template. Available fonts are (run `mail_font()` for hints):
#' - 'sffamily' (default), or
#' - 'calligra'
#' @param mail_fontsize character. fontsize of the mail for mail template. Available sizes are (run `mail_fontsize()` for hints):
#' - '10pt',
#' - '11pt', and
#' - '12pt' (default)
#' @param mail_bodysize character. fontsize of the mail body for mail template. Available sizes are (run `mail_bodysize()` for hints):
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
#' - 'rose',
#' - 'night',
#' - 'ice'.
#' @return demo files to build with bookdown
#' @importFrom utils download.file unzip
#' @export
#' @examples
#' bookdownplus(render = FALSE)
#' bookdownplus(template = 'article', render = FALSE)
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
                          title ='R bookdownplus',
                          author = 'Peng Zhao',
                          render = TRUE,
                          rproj = TRUE,
                          output_name = NA,
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
  pckpath <- paste0(path.package(package = 'bookdownplus'), '/')
  ###### internal functions ######
  ### copy necessary files to the working directory
  copyfolder <- function(folder = 'images') {
    if (!dir.exists(folder)) dir.create(folder)
    mypath <- paste0(pckpath, folder)
    file.copy(from = dir(mypath[dir.exists(mypath)][1], full.names = TRUE), to = folder)
  }

  ### backup a file to backup/ folder, avoid overwriting it.
  backup <- function(filename, ifbackup = TRUE) {
    if (ifbackup) {
      if (file.exists(filename)) {
        filenamesplit <- strsplit(filename, '\\.')[[1]]
        filenamesplitl <- length(filenamesplit)
        tolength <- ifelse(filenamesplitl > 1, filenamesplitl - 1, 1)
        filenamepost <- filenamesplit[filenamesplitl]
        getwd()
        if (!dir.exists('backup')) dir.create('backup')
        backupfile <- paste0('backup/', paste(filenamesplit[1:tolength], collapse = '_'), '-', format(Sys.time(), '%Y-%m-%d-%H-%M-%S'), '.', filenamepost)
        file.copy(filename, backupfile)
        message(paste(filename, 'exsits. Backuped to', backupfile, ':)'))
      } #else {
      #message(paste(filename, 'does not exist. No need to bakcup :)'))
      #}
    }
  }

  ###### copy folders and files to the working dir ######
  lapply(X = c('backup', 'bib', 'images'), FUN = copyfolder)
  backup('index.Rmd')

  unzip(paste0(pckpath, 'zip/', template, '.zip'))

  if (rproj) {
    mypath <- paste0(pckpath, 'proj/')
    file.copy(from = paste0(mypath[dir.exists(mypath)][1], 'bookdownplus'), to = 'bookdownplus.Rproj')
  }

  if (template == 'nte_zh') {
    if(!dir.exists('fonts')) dir.create('fonts')
    download.file('https://github.com/pzhaonet/bookdownplus/raw/master/fonts/fonts.zip', destfile = './fonts/fonts.zip')
    unzip('./fonts/fonts.zip', exdir = './fonts')
    file.remove('./fonts/fonts.zip')
  }

  ###### prepare index.Rmd ######
  file.rename(paste0('index_', template, '.Rmd'), 'index.Rmd')
  index <- readLines('index.Rmd', encoding = 'UTF-8')
  index[grep('^title: "', index)] <- paste0('title: "', title, '"')
  index[grep('^author: "', index)] <- paste0('author: "', author, '"')
  # index[grep('titleshort: "', index)] <- paste0('titleshort: "', titleshort, '"')

  if (template == 'poster') {
    index[grep('^%% template=tex/poster.tex', index)] <- paste0('%% template=tex/poster_', poster_theme, '.tex')
  }
  writeLines(index, 'index.Rmd', useBytes = TRUE)

  if (template != 'poster') {
    ###### prepare _bookdown.yml, which defines the output filename of the book. ######
    book_filename <- ifelse(is.na(output_name), template, output_name)
    filenameyml <- readLines(paste0(pckpath, 'yml/_bookdown.yml'), encoding = 'UTF-8')
    filenameyml[grep('book_filename: ', filenameyml)] <- paste0('book_filename: ', book_filename)
    backup('_bookdown.yml')
    writeLines(filenameyml, '_bookdown.yml', useBytes = TRUE)

    ###### prepare _output.yml, which defines the output files of gitbook and epub formats. comment it if you only need pdf. ######
    backup('_output.yml')
    # file.copy('rmd/_output.yml', '_output.yml', copy.mode = FALSE, overwrite = TRUE)
    # output <- readLines('rmd/_output.yml')
    if (!is.null(more_output)) {
      outputyml <- file("_output.yml","w")
      for (ic in more_output) {
        writeLines(readLines(paste0(pckpath, 'yml/_output_', ic, '.yml')), con = outputyml, sep= "\n")
      }
      close(outputyml)
    }
    ###### prepare body.Rmd ######
    for(i in c('body.Rmd', 'body.tex')) {
      backup(i)
      if(file.exists('body.Rmd')) file.remove(i)
    }
    bodydemo <- ifelse(template == 'calendar', 'body_calendar.tex', paste0('body_', template, '.Rmd'))
    bodynew <- paste0('body', substr(bodydemo, nchar(bodydemo)-3, nchar(bodydemo)))
    file.rename(bodydemo, bodynew)
    # file.copy(bodydemo, bodynew, copy.mode = FALSE, overwrite = TRUE)

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

    if (render) {
      outfrmt <- paste0('bookdown::', c('pdf_book', more_output))
      if(grepl('_dev', template)) outfrmt <- 'bookdown::pdf_book'
      bookdown::render_book(
        'index.Rmd',
        output_format = outfrmt, clean = FALSE)
      htmlfile <- paste0(book_filename, '.html')
      bookdir <- '_book'
      if (file.exists(htmlfile)) {
        if (!dir.exists(bookdir)) dir.create(bookdir)
        file.copy(htmlfile, paste0(bookdir, '/', book_filename, '2.html'))
        file.remove(htmlfile)
      }

      mdfile <- paste0(book_filename, '.utf8.md')
      if (file.exists(mdfile)) {
        if (!dir.exists(bookdir)) dir.create(bookdir)
        file.copy(mdfile, paste0(bookdir, '/', paste0(book_filename, '.md')))
        file.remove(mdfile)
        if (file.exists(paste0(book_filename, '.knit.md'))) file.remove(paste0(book_filename, '.knit.md'))
        if (file.exists(paste0(book_filename, '.lol'))) file.remove(paste0(book_filename, '.lol'))
      }

    }
  }
}

#' Title Show demos
#'
#' @param x NA or character, templates to show
#' @param mail_all logical
#'
#' @return demo files
#' @export
#'
#' @examples
#' bd(template = NA)
bd <- function(x = template()[-which(template() == 'poster')], mail_all = FALSE){
  if('poster' %in% x) message('"poster" demo output will not be displayed automatcially. See the help.')
  if(.Platform$OS.type == 'unix') x <- x[x %in% c('article_mdpi', 'article', 'calendar', 'chemistry_zh', 'chemistry', 'discussion', 'dnd_dev', 'docsens', 'guitar', 'journal', 'mail', 'musix', 'nonpar', 'nte_zh', 'poem', 'rbasics', 'skak', 'thesis_classic', 'thesis_mypku_zh', 'thesis_pku_zh', 'thesis_ubt', 'thesis_zju_zh', 'yihui_crc', 'yihui_demo', 'yihui_mini', 'yihui_zh')]
  if(!is.na(x[1])) {
    for(i in x){
      message(paste0('Generating a demo book from the "', i, '" template'))
      bookdownplus(template = i, more_output = more_output())
      message(paste0('Done with "', i, '"!'))
    }
  } else if(mail_all) {
    for(mf in mail_font()) {
      for(ms in mail_style()) {
        for(mt in mail_theme()) {
          bookdownplus(template = 'mail', mail_style = ms, mail_font = mf, mail_theme = mt, output_name = paste('mail', ms, mf, mt, sep = '_'))
        }
      }
    }
  } else {
    message('No template in the showcase.')
  }
}

#' Prepare a template to contribute to bookdownplus
#'
#' @param template_name character. tempalte name.
#' @param bodyfile character. name of the body file.
#' @param indexfile character. name of the index file.
#' @param texfile character. name of the texfile
#'
#' @return organzed folders and files.
#' @export
#'
#' @examples
#' share()
share <- function(template_name = 'new', bodyfile = 'body.Rmd', indexfile = 'index.Rmd', texfile = 't.tex'){
  folders <- c('rmd', 'style', 'tex')
  files <- paste0(c('body_', 'index_', 'template_'), template_name, c('.Rmd', '.Rmd', '.tex'))
  for(i in folders) if(!dir.exists(i)) dir.create(i)
  pckpath <- paste0(path.package(package = 'bookdownplus'), '/')
  mypath <- paste0(pckpath, 'proj/')
  for (i in c('body.Rmd', 'index.Rmd')) file.copy(from = paste0(mypath[dir.exists(mypath)][1], i), to = i)
  if(file.exists(texfile)) file.copy(texfile, paste0('tex/', files[3])) else message(paste(texfile, 'does not exist.'))
  if(file.exists(bodyfile)) file.copy(bodyfile, paste0('rmd/', files[1])) else message(paste(bodyfile, 'does not exist.'))
  if(file.exists(indexfile)) {
    indextxt <- readLines(indexfile, encoding = 'UTF-8')
    indextxt[grep('template', indextxt)] <- gsub('new', template_name, indextxt[grep('template', indextxt)])
    writeLines(indextxt, indexfile, useBytes = TRUE)
    file.copy(indexfile, paste0('rmd/', files[2]))
  } else message(paste(indexfile, 'does not exist.'))
}
