#' Create a demo file for an .Rmd file to compile with R bookdown package.
#'
#' Yes, create a demo file for bookdown.
#' @param template character, choose a template for your book or doc
#' @param title poster tile
#' @param author poster author
#' @param from_address sender's address (Street and No.) for mail template
#' @param from_town  sender's town for mail template
#' @param from_phone sender's phone number for mail templae
#' @param from_email sender's email for mail template
#' @param to_who receiver's name for mail template
#' @param to_address receiver's address (Street and No.) for mail template
#' @param to_town receiver's town for mail template
#' @param type mail type for mail template
#' @param fontsize fontsize of the mail body for mail template
#' @param email author's email for poster template
#' @param institute for poster template
#' @param longinstitute  for poster template
#' @param web   for poster template
#' @param logo  for poster template
#' @param backimg  for poster template
#' @param bibliofiles  for poster template
#' @param theme  for poster template
#' @return an .Rmd file to build with bookdown
#' @export
#' @examples
bookdownplus <- function( ######
  template = c('article',     #1, academic article
               'article_zh',  #2, academic article in Chinese
               'calendar',    #3, calendar, in progress
               'chemistry',   #4, chemical molecular formulae and equations
               'chemistry_zh',#5, in Chinese,
               'guitar',      #6, guitar book
               'mail',        #7, mail, in progress
               'journal',     #8, laboratory journal, or personal diary
               'yihui_mini',  #9, a mini demo by Yihui
               'yihui_demo',  #10, the original demo by Yihui
               'yihui_zh',    #11, the demo in Chinese by Yihui
               'article_mdpi',   #12, academic article by mdpi
               'thesis_classic', #13, classic thesis
               'thesis_ubt',     #14, thesis of University of Bayreuth
               'thesis_zju',  #15, thesis of Zhejiang Uni., in Chinese
               'poem',        #16, poem
               'poster'       #17, poster
  )[13],
  title ='R bookdown+: Authoring varied types of books and documents with R bookdown',
  author = 'Peng Zhao',

  # for mail template only
  from_address = 'Maximillian Street 27',
  from_town = '95440 Bayreuth, Germany',
  from_phone = '62762524',
  from_email = 'dapengde@live.com',
  to_who = 'CAMS',
  to_address = 'Zhongguancunnandajie 46',
  to_town = '100000 Beijing, China',
  type = c('business', 'personal')[2],
  fontsize = c(
    'tiny', 'scriptsize', 'footnotesize', 'small', 'normalsize',
    'large', 'Large', 'LARGE', 'huge','Huge') [9],

  # for poster template only
  email = 'pzhao@pzhao.net',
  institute = 'Institute of Ecology, Univ. Innsbruck',
  longinstitute = 'Institute of Ecology, University of Innsbruck, Austria',
  web = 'pzhao.org',
  logo = 'images/logo.png',
  backimg = 'images/logo.png',
  bibliofiles = 'bib/bib.bib',
  theme = c('eco', 'ocean', 'rose')[1]) {

  ###### internal functions ######
  ### copy necessary files to the working directory
  copyfolder <- function(folder = 'images') {
    dir.create(folder)
    path <- paste0(.libPaths(), '/bookdownplus/', folder)
    file.copy(from = dir(paste0(.libPaths(), '/bookdownplus/', folder), full.names = TRUE), to = folder)
  }

  ###  define body file name, dependent on the template name
  bodyfile <- function(x) {
    if (x == 'article_zh') return('demo/body_article_zh.Rmd')
    if (x == 'calendar') return('demo/body_calendar.tex')
    if (x == 'chemistry') return('demo/body_chemistry.Rmd')
    if (x == 'chemistry_zh') return('demo/body_chemistry_zh.Rmd')
    if (x == 'guitar') return('demo/body_guitar.Rmd')
    if (x == 'mail') return('demo/body_mail.Rmd')
    if (x == 'journal') return('demo/body_journal.Rmd')
    if (x == 'yihui_zh') return('demo/body_yihui_zh.Rmd')
    if (x == 'thesis_classic') return('demo/body_thesis_classic.Rmd')
    if (x == 'thesis_zju') return('demo/body_thesis_zju.Rmd')
    if (x == 'poem') return('demo/body_poem.Rmd')
    'demo/body.Rmd'
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
        print(paste(filename, 'exsits. Backuped to', backupfile, ':)'))
      } else {
        print(paste(filename, 'does not exist. No need to bakcup :)'))
      }
    }
  }

  ###### copy folders to the working dir ######
  lapply(X = c('backup', 'bib', 'demo', 'images', 'style','tex'), FUN = copyfolder)

  ###### prepare index.Rmd ######
  book_filename <- template
  index <- readLines(paste0('demo/index_', template, '.Rmd'), encoding = 'UTF-8')
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
    filenameyml <- readLines('demo/_bookdown.yml', encoding = 'UTF-8')
    filenameyml[grep('book_filename: ', filenameyml)] <- paste0('book_filename: ', book_filename)
    backup('_bookdown.yml')
    writeLines(filenameyml, '_bookdown.yml', useBytes = TRUE)

    ###### prepare _output.yml, which defines the output files of gitbook and epub formats. comment it if you only need pdf. ######
    backup('_output.yml')
    # file.copy('demo/_output.yml', '_output.yml', copy.mode = FALSE, overwrite = TRUE)

    ###### prepare body.Rmd ######
    bodydemo <- bodyfile(template)
    bodynew <- paste0('body', substr(bodydemo, nchar(bodydemo)-3, nchar(bodydemo)))
    backup('body.Rmd')
    file.copy(bodydemo, bodynew, copy.mode = FALSE, overwrite = TRUE)

    ###### exceptions ######

    ### article_zh needs an additional abstract.tex file
    if (template == 'article_zh') {
      backup('abstract.tex')
      file.copy('tex/template_article_zh_abstract.tex', 'abstract.tex', copy.mode = FALSE, overwrite = TRUE)
    }

    ### mail needs an additional template_mail.tex as a before_body part.
    if (template == 'mail') {
      tmail <- readLines('tex/template_mail.tex')
      tmail[51] <- paste0('{\\bfseries ', from_who, '}\\\\[.35ex]')
      tmail[53] <- paste0(from_address, '\\\\')
      tmail[54] <- paste0(from_town, '\\\\[.35ex]')
      tmail[55] <- paste0('\\Telefon~', from_phone, '\\\\')
      tmail[56] <- paste0('\\Letter~\\href{mailto:', from_email, '}{', from_email, '}')

      tmail[61] <- paste0('{\\bfseries ', to_who, '}\\\\[.35ex]')
      tmail[63] <- paste0(to_address, '\\\\')
      tmail[64] <- paste0(to_town, '\\\\[.35ex]')

      tmail[78] <- paste0('{\\bfseries ', from_who, '}\\\\')
      tmail[75] <- paste(switch(type, 'business' = '\\sffamily', 'personal' = '\\calligra' ),
                         fontsize, sep = '\\')
      writeLines(tmail, 'tex/template_mail_user.tex')
    }

    ### article_mdpi needs an additional bst file
    if (template == 'article_mdpi') {
      file.copy('style/mdpi.bst', 'mdpi.bst')
    }
  }
}
