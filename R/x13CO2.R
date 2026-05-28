#' Convert delta13CO2 to mole fraction of 13C-CO2 in dry air
#' 
#' @param d13CO2 numeric. Value of delta13C in CO2 in permil.
#' @param Rs numeric. Value of the 13C/12C ratio of the standard. VPDB as default value.
#' @param CO2 numeric. mole fraction of 12C-CO2 in dry air.
#' 
#' @returns numeric value. The mole fraction of 13C-CO2 in units of umol mol-1.
#' @export
#' 
#' @details
#' The value of the VPD standard is taken from Carmin et al (2025, https://doi.org/10.1002/rcm.10018).
#' The implemented equation corresponds to equation (6) from Meija et al. (2016, doi:10.1515/pac-2015-0305).
#' It is multiplied at the end by the mole fraction of CO2 to obtain the mole fraction of 13C in CO2.
#' 


x13CO2<-function(d13CO2, CO2, Rs=0.011113){
  (1/(1+(1/(Rs*(1+d13CO2*0.001))))) * CO2
}
