#' Get information of a sampled box from a report from the autosampler
#' 
#' @param file a character string with the location of the csv file containing information from the autosampler. 
#' Usually a result to a call to the function sampledBoxes
#' @param box character string with the Box ID
#' @param selvars character vector of variables to select from original file
#' 
#' @return a data.frame with information on flasks sampled for the particular box
#' @export
#' 
#' @examples 
#' \dontrun{
#' getSampledBox(file="FlaskCycle/packedBoxes/sampledBoxes.csv", box="B0171")
#' }
getSampledBox<-function(file, box, selvars=c("sampleID", "flaskID", "batchID", "boxID", 
                                             "startTime", "endTime", "flaskPort",
                                             "flaskInsertTime", "mountPressure", "samplePressure")){
  fl=read.csv(file)
  all<-fl[fl$boxID==box, selvars]
  return(all)
}
