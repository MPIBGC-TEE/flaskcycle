#' Load control file, data and metadata
#' 
#' @param cf character string to the path to the control file. Usually a .csv file
#' with a yaml metadata header.
#' 
#' @return list with a data.frame with data, and a list with metadata information
#' @export
#' @importFrom csvy read_csvy get_yaml_header
#' @importFrom yaml yaml.load
#' 
load_cf<-function(cf){
  df<-read_csvy(cf)
  mtdt<-yaml.load(get_yaml_header(cf))
  return(list(data=df, metadata=mtdt))
}
