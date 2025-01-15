#' Add smooth lines to plot
#' 
#' @description
#' Takes predictions from a smoothing spline obtained with the function
#' [smoothingSpline()] and add smooth lines to a plot produced with the function
#' [plotGas()].
#' 
#' @param pred.spline a data.frame of predictions obtained from [smoothingSpline]
#' @param ... other ploting arguments pass to [graphics::lines()].
#' 
#' @return lines added to a plot
#' 
#' @export
#' 
smoothLines<-function(pred.spline, ...){
  graphics::lines(lubridate::date_decimal(pred.spline$x), pred.spline$y, ...)
}

