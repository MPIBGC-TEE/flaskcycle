#' Check if flasks in a box have been recorded as sampled from the autosampler
#' 
#' @param samplerBoxData A data.frame of sampled boxes produced as a report from
#' the autosampler and loaded using the function selectBox
#' @param controlFile a list with control file data produced by load_cf
#' 
#' @return a vector with the position of the flasks that match the sampler box data. 
#' @export
#' 
checkBox <-
function(samplerBoxData, controlFile){
  match(controlFile$data$Flask, samplerBoxData$flaskID)
}
