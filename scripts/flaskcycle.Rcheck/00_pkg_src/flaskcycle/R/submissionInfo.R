#' Extracts required information for submitting sampled flasks to a laboratory
#' 
#' @param box data.frame with the sampler report for a specific box ID
#' @param file character string with the path and file name to write output
#' 
#' @return writes a csv file at the specified path
#' @export
#' @importFrom utils write.csv
#' 
submissionInfo <-
function(box, file="~/Repos/ATTO_flask_sampling/FlaskCycle/SubmissionFiles/Aug2024.csv"){
  vars<-c("flaskID", "boxID", "startTime", "endTime", "samplePressure")
  samplingTime<-as.POSIXct(box$startTime, tz="UTC") + (30*60) # Half hour after sampling startTime representative sampling time
  write.csv(cbind(box[,vars], samplingTime), file, row.names = FALSE)
}
