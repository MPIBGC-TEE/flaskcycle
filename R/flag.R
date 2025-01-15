#' Flags for time series data
#' 
#' @description
#' Flags for data based on a time series test. The input to the function should
#' be outliers identified by the fitting of a smoothing spline with the function
#' [smoothingSpline()]. A flag of 0 indicates good data, and a flag value of 1
#' indicates failure of the time series test.
#' 
#' @param ts a numeric time series for a gas species
#' @param outliers a vector of outliers identified by the function [smoothingSpline()]
#' 
#' @return an integer vector with values of 0 for observations that pass the
#' time series test, and a numeric value of 1 for observations that do not pass 
#' the test. Observations with a flag of 1 are not representative of a regional
#' scale background
#' 
#' @export
#' 
flag<-function(ts, outliers){
  f<-rep(0,length(ts))
  f[match(outliers, ts)]<-1
  return(f)
}
