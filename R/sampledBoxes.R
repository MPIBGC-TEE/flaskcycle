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
  allData<-lapply(allFiles[-length(allFiles)], read.csv2) # Removes last entry assuming this is the file produced by this function
  allSampledFlasks=do.call(rbind,allData[c(-1,-2)]) # Removing the 2021 data, which has errors in startTime
  write.csv(allSampledFlasks, file=paste0(toWhere, "/sampledBoxes.csv"), row.names = FALSE)
}
