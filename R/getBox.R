#' Get box data and metadata from control file
#' 
#' @param cf control file as list. This is produced by function load_cf
#' @param box character string with the ID of the box to extract
#' 
#' @return a list with data and metadata for a single box
#' @export
#' 
getBox<-function(cf, box){
  df<-cf$data
  boxdata<-df[df$Box==box,]
  return(list(data=boxdata, metadata=c(cf$metadata, Box=box)))
}
