#' Plot data for a specific gas species
#' 
#' @param x release data.frame
#' @param gas character string with the name of the gas to plot
#' @param start character string with the start date for the horizonta axis
#' @param end character string with the end date for the horizontal axis
#' @param sigma character string with the name of the variable that represents the uncertainty in the data
#' @param type argument passed to plot() for the type of plot
#' @param flag vector of integers with observations to flag
#' @param ... other arguments passed to plot()
#' 
#' @return a plot
#' @export

plotGas<-function(x, gas, start="2021-06-01", end="2023-12-31", sigma=NULL, type="b", flag=NULL, ...){
  tm<-as.POSIXct(x$endTime, tz="UTC") - (60*30) # Last 30 minutes
  plot(tm, x[,gas],  pch=19, xlab="", type=type, xlim=c(as.POSIXct(start), as.POSIXct(end)), bty="n", ...)
  if(!is.null(sigma)) arrows(x0=tm, y0=x[,gas]-x[,sigma], y1=x[,gas]+x[,sigma], code=3, length=0.05, angle=90, lwd=0.5)
  if(!is.null(flag)) points(tm[flag], x[flag, gas], col=2, pch=19)
}
