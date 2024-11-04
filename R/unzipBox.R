#' Unzip files containing reports of sampled flasks from autosampler
#' 
#' @param year character vector of years of data to unzip
#' @param path character string with the path where zip files are stored
#' 
#' @return a file containing all data from a box report
#' @export
#' @importFrom utils unzip
#' 
unzipBox <-
function(year, path){
  loc<-paste0(path, year)
  zipfiles<-list.files(path=loc, pattern = "*.zip", full.names = TRUE)
#  print(zipfiles)
  sapply(zipfiles,FUN=unzip, exdir=loc)
}
