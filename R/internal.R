
#' copy necessary files to the working directory
#'
#' @param folder the folder name
#'
#' @return copy folders to the wd.
copyfolder <- function(folder = 'images') {
  if (!dir.exists(folder)) dir.create(folder)
  pckpath <- paste0(system.file(package = 'bookdownplus'), '/')
  mypath <- paste0(pckpath, folder)
  file.copy(from = dir(mypath[dir.exists(mypath)][1], full.names = TRUE), to = folder)
}

#' backup a file to backup/ folder, avoid overwriting it.
#'
#' @param filename the file to backup
#' @param ifbackup whether to backup
#'
#' @return backup the files
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

