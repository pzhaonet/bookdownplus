#' Available templates.
#'
#' Visit <http://b.pzhao.org> to see a gallery of the templates.
#'
#' @return a dataframe displaying available templates.
#' @export
#'
#' @examples get_template()
get_template <- function(){
  # local tempaltes
  path_local <- paste0(system.file(package = 'bookdownplus'), '/templates/-list.csv')
  df_t <- read.csv(path_local, stringsAsFactors = FALSE, encoding = 'UTF-8')
  df_t$location <- 'local'
  # remote templates on github
  path_remote <- 'https://raw.githubusercontent.com/pzhaonet/bookdownplus/master/upload/-list.csv'
  df_r <- try(read.csv(path_remote), silent = T)
  if (class(df_r) != 'try-error') {
    df_r <- read.csv(path_remote, stringsAsFactors = FALSE, encoding = 'UTF-8')
    df_r$location <- 'remote'
    df_t <- rbind(df_t, df_r)
  } else {
    message('The github repo "pzhaonet/bookdownplus" cannot be connected. Thus only local templates are displayed.')
  }
  return(df_t)
}

#' Available output formats besides pdf_book
#'
#' @param dataframe logical. FALSE by default. whether return a vector or a data frame.
#'
#' @return a vector or a dataframe.
#' @export
#'
#' @examples get_output()
get_output <- function(dataframe = FALSE){
  temp <- c('word_document2',
            'epub_book',
            'gitbook',
            'html_document2')
  tempdf <- data.frame(i = 1:length(temp),
                       template = temp)
  if (dataframe) return(tempdf)
  return(temp)
}

#' Create demo files for building books with R bookdown package.
#'
#' @param template character. Choose a template for your book or doc. The default template is 'thesis_classic'. Run `template()` to see the available templates.
#' @param title character. book title.
#' @param author character. book author.
#' @param more_output optional output formats besides pdf_book, which can be (run `get_output()` for hints):
#' - NULL (default)
#' - 'word_document2'
#' - 'html_document2'
#' - 'epub_book'
#' - 'gitbook'
#' @param output_name chracter. the name of the output files. If NA (default), the template name will be used.
#' @param render logical. whether to render automatically
#' @param rproj logical. whether to created an .Rproj file automatically
#' @param to character. The destination directory for the bookdown project
#' @param new logical. Whether create a new project. If FALSE, only render the existing book.
#' @return demo files to build with bookdown
#' @importFrom utils download.file unzip read.csv untar
#' @export
#' @examples
#' \dontrun{
#' bookdownplus(render = FALSE)
#' for(i in get_template()[1:20, 1])
#' bookdownplus(template = i,
#'              more_output = more_output()[1:3],
#'                           to = i)
#' }
#' @description
#' Technically, `bookdownplus` is a collection and selector of R bookdown templates. `bookdownplus` helps you write academic journal articles, guitar books, chemical equations, mails, calendars, and diaries. R `bookdownplus` extends the features of `bookdown`, and simplifies the procedure. Users only have to choose a template, clarify the book title and author name, and then focus on writing the text. No need to struggle in YAML and LaTeX.
#' - Before starting, you have to install `bookdown` package, and other software and packages (i.e. 'Pandoc', 'LaTeX', `rmarkdown`, `rticle`, `knitr`, etc.) which `bookdown` depends on. See the [official manual of `bookdown`](https://bookdown.org/yihui/bookdown/) for details.
#' - Run `bookdownplus()` and specify the template with `template` argument, You will get some files (e.g. `index.Rmd`, `body.Rmd`) and folders in your working directory. Although there are many other arguments for `bookdownplus()`, you can simply ignore them if you use `bookdownplus` package for the first time.
#' - Build it with bookdown. Your will get a book file named `*.pdf` in `_book/` folder.
#' - Write your own text in `index.Rmd` and `body.Rmd`, and build your own lovely book.
bookdownplus <- function(template = 'copernicus',
                         more_output = NULL,
                         title ='title',
                         author = 'author',
                         render = TRUE,
                         rproj = TRUE,
                         output_name = NA,
                         to = './',
                         new = TRUE) {
  oldwd <- getwd()
  on.exit(setwd(oldwd))
  if(!dir.exists(to)) dir.create(to)
  setwd(to)
  if(template == 'discussion'){
    message('The template "discussion" is renamed as "copernicus".')
    template = 'copernicus'
  }

  if(template == 'article'){
    return(message('The template "article" is deprecated. Please use "copernicus" instead, and set "online: copernicus" in index.Rmd.'))
  }

  if(template == 'thesis_ubt'){
    message('The template "thesis_ubt" is renamed as "ubt".')
    template = 'ubt'
  }

  if(template == 'thesis_mypku'){
    message('The template "thesis_mypku" is renamed as "thesis_zh".')
    template = 'thesis_zh'
  }

  if(template == 'thesis_zju'){
    message('The template "thesis_zju" is renamed as "zju_zh".')
    template = 'zju_zh'
  }

  book_filename <- ifelse(is.na(output_name), template, output_name)
  pckpath <- paste0(system.file(package = 'bookdownplus'), '/')

  if(new){
  ###### created the .Rproj file
  if(rproj) {
    mypath <- paste0(pckpath, 'proj/')
    file.copy(from = paste0(mypath[dir.exists(mypath)][1], 'bookdownplus'), to = '-bookdownplus.Rproj')
  }

  ###### check whether the template is available
  template_all <- get_template()
  if(!template %in% template_all$name)
    return(message(paste0(template, ' is unavailable. Please check whether your spelling is correct. Run get_template() to see available templates.')))

  template_info <- template_all[template_all$name == template, ]
  if(template_info$location == 'remote') {
    ###### get the remote template
    remote_file <- template_info$download
    dest_file <- gregexpr('[^/]+$', remote_file)
    dest_file <- substr(remote_file, dest_file[[1]][1], nchar(remote_file))
    download.file(remote_file, dest_file)
    file_type <- substr(dest_file, gregexpr('([^\\.]+)$', dest_file)[[1]][1], nchar(dest_file))
    if(file_type == 'zip') {
      unzip(dest_file)
      file.remove(dest_file)
    } else if(file_type =='gz') {
      untar(dest_file)
      file.remove(dest_file)
    }
  } else {
    ###### get the local template and prepare

    ###### copy folders and files to the working dir ######
    lapply(X = c('backup', 'bib', 'images'), FUN = copyfolder)
    backup('index.Rmd')

    unzip(paste0(pckpath, 'templates/', template, '.zip'))

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
    writeLines(index, 'index.Rmd', useBytes = TRUE)

    ###### prepare _bookdown.yml, which defines the output filename of the book. ######
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
    ### mdpi needs an additional bst file
    if (template == 'mdpi') {
      file.copy('style/mdpi.bst', 'mdpi.bst')
    }
  }
  }

  ###### render the book
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

#' Show demos
#'
#' @param template NA or character, templates to show
#' @param to character. The destination directory for the bookdown project
#'
#' @return demo files
#' @export
#'
#' @examples
#' bd(NULL)
bd <- function(template = NA, to = '.'){
  if(is.null(template)){
    message('Please give a valid template name.')
  } else {
    # available templates
    x <- get_template()
    # x <- x[x$location == 'local', ]
    tl <- x$name
    loc <- x$location
    # filter the templates for unix
    # if(.Platform$OS.type == 'unix') tl <- tl[tl %in% c('mdpi', 'copernicus', 'calendar', 'chemistry_zh', 'chemistry', 'dnd_dev', 'docsens', 'guitar', 'journal', 'mail', 'musix', 'nonpar', 'nte_zh', 'poem', 'rbasics', 'skak', 'classic', 'thesis_zh', 'pku_zh', 'ubt', 'zju_zh', 'crc', 'demo', 'mini', 'demo_zh')]
    if(is.na(template[1])) template <- tl else {
      for(i in template){
        if(i %in% tl){
          message(paste0('Generating a demo book from the "', i, '" template...........'))
          if(loc[tl == i] == 'local'){
            myoutput <- get_output()
          } else {
            myoutput <- NULL
          }
          bookdownplus(template = i, more_output = myoutput, render = TRUE, rproj = FALSE, to = to)
          message(paste0('Done with "', i, '"!'))
        } else {
          message(paste(i, 'is unavailable. Please run "get_template()" to see available ones.'))
        }
      }
    }
  }
}

#' Prepare a strict template skeleton to contribute to bookdownplus
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
#' create()
create <- function(template_name = 'new', bodyfile = 'body.Rmd', indexfile = 'index.Rmd', texfile = 't.tex'){
  folders <- c('rmd', 'style', 'tex')
  files <- paste0(c('body_', 'index_', 'template_'), template_name, c('.Rmd', '.Rmd', '.tex'))
  for(i in folders) if(!dir.exists(i)) dir.create(i)
  pckpath <- paste0(system.file(package = 'bookdownplus'), '/')
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


#' Prepare a relaxed template folder to contribute to bookdownplus
#'
#' @param template_name character. The tempalte name.
#'
#' @return Prepare a folder for contribution.
#' @export
#'
#' @examples
#' share()
share <- function(template_name = NA){
  if(is.na(template_name)) return(message('Please give a valid tempalte name.'))
  dir.create(template_name)
  dir.create(paste0(template_name, '/showcase'))
  file.create(paste0(template_name, '/put_readme.txt_and_demo.zip_here.txt'))
  file.create(paste0(template_name, '/showcase/put_sample_images_and_cover.png_here.txt'))
}

#' Simple version of get_template()
#'
#' @return a vector of the template names
#' @export
#'
#' @examples template()
template <- function(){
  message('template() is to be deprecated. Please use get_template().')
  get_template()$name
}

#' Simple version of get_output()
#'
#' @return a vector of the output formats
#' @export
#'
#' @examples more_output()
more_output <- function(){
  message('more_output() is to be deprecated. Please use get_output().')
  get_output()[c(1, 2, 4, 3)]
}

#' A deprecated function
#'
#' @return a message.
#' @export
#'
#' @examples mail_font()
mail_font <- function(){
  message('mail_font() is deprecated. Please see the details in the index.Rmd file of the "mail" template.')
}
