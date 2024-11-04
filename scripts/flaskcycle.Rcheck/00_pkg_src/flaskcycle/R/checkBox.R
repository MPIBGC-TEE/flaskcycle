#' Check if flasks in a box have been recorded as sampled from the autosampler
#' 
#' @param samplerBoxData A data.frame of sampled boxes produced as a report from
#' the autosampler and loaded using the function selectBox
#' @param manualList a data.frame with flask IDs manually produced at the time of 
#' checking a box.
#' 
#' @return a logical vector of flasks that match both lists. 
#' @export
#' 
checkBox <-
function(samplerBoxData, manualList){
  match(manualList$Flask, samplerBoxData$flaskID)
}
