#' Read file delivered by the IsoLab and select specific columns with new names
#' 
#' @param file character string with the path to the location of the file to read. 
#' Extension must be in .xls or .xlsx
#' @param columns character vector with the column letters that correspond to the variables to select.
#' @param vars character vector with the new names to assign to selected variables.
#' 
#' @return a data.frame with the selected variables
#' @export


readIsoLab<-function(file, columns, 
                     vars=c("USN", "request number", "FlaskNo", "box",                         
                             "sampling time", 
                             "O2_N2", "sigma_O2_N2", "Ar_N2",
                             "sigma_Ar_N2", 
                             "d13C-CO2", "d18O-CO2", "sigma_d13C-CO2",
                             "sigma_d18O-CO2",  
                             "d13C-CH4", "d2H-CH4", "sigma_d13C-CH4", 
                             "sigma_d2H-CH4")
                      ){
  if(length(columns) != length(vars)) stop("Number of elements in columns and vars must match")
                      fl<-read_excel(path=file,sheet="data", skip=5)
                      colvals<-c(LETTERS, kronecker(X=LETTERS, Y=LETTERS, FUN=paste0))
                      matchcols<-match(columns, colvals)
                      selData<-as.data.frame(fl[,matchcols])
                      names(selData)<-vars
                      return(selData)
}



