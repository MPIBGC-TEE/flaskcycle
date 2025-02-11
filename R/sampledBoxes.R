#' Collect all information from the report produced by the autosampler about 
#' packed boxes and prints a report
#' 
#' @param fromWhere a character string with the path with the reports are stored.
#' @param toWhere a character string with the path to store the report. 
#' 
#' @return a csv file with the data of all sampled boxes
#' @export
#' @importFrom utils read.csv2 write.csv
#' 
#' @examples 
#' sampledBoxes()
sampledBoxes <-
function(fromWhere="~/Repos/ATTO_flask_sampling/FlaskCycle/packedBoxes", toWhere=fromWhere){
  allFiles<-list.files(path=fromWhere, pattern = "*.csv", recursive = TRUE,
                       full.names = TRUE)
  allData<-lapply(allFiles, read.csv2) 
  allSampledFlasks=do.call(rbind,allData) 
  write.csv(allSampledFlasks, file=paste0(toWhere, "/sampledBoxes.csv"), row.names = FALSE)
}
