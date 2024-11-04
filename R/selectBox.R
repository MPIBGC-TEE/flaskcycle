#' Selects data for a single box from all sampled boxes
#' 
#' @param box character string with box ID
#' @param year integer with the year of sampling
#' @param sampledBoxes character string with the path of the report of all sampled boxes
#' 
#' @return sampling report for one selected box
#' @export
#' @importFrom utils read.csv
#' 
#' @examples 
#' selectBox(box="B0171", year=2023, sampledBoxes = "~/Repos/ATTO_flask_sampling/FlaskCycle/packedBoxes/sampledBoxes.csv")
#' selectBox(box="B0171", sampledBoxes = "~/Repos/ATTO_flask_sampling/FlaskCycle/packedBoxes/sampledBoxes.csv")
#' 
selectBox <-
function(box, year=NULL, sampledBoxes){
  allBoxes<-read.csv(sampledBoxes)
  sb<-allBoxes[allBoxes$boxID==box,]
  if(is.null(year)){
    return(sb)
  }
  else{
    y<-as.numeric(substr(sb$endTime, 1, 4))
    sb[y==year,]
    }
}
