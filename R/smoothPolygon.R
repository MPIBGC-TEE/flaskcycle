#' Adds polygon around smoothing spline in plot
#' 
#' @description
#' Takes predictions from a smoothing spline obtained with the function
#' [smoothingSpline()] plus the root mean square error of the fitting
#'  and adds a polygon to a plot produced with the function
#' [plotGas()].
#' 
#' @param pred.spline the output obtained from [smoothingSpline]
#' @param rsme a value of the rsme obtained from the output of a call to [smoothingSpline()]
#' @param ... other ploting arguments pass to [graphics::polygon()].
#' 
#' @return lines added to a plot
#' 
#' @export
#' 
smoothPolygon<-function(pred.spline, rsme, col=gray(0.5, alpha=0.3), border=gray(0.5), ...){
  xs<-lubridate::date_decimal(pred.spline$x)
  ysM<-pred.spline$y + rsme
  ysm<-pred.spline$y - rsme
#print(ysm)
    graphics::polygon(x=c(xs, rev(xs)), y=c(ysM, rev(ysm)), col=col, border=border, ...)
}

