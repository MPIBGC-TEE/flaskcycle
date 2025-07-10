#' Smoothing spline and outlier identification for a specific gas species
#' 
#' @param x release data.frame
#' @param gas character string with the name of the gas to plot
#' 
#' @return A list with three elements:
#' * `outliers`: numeric vector with identified outliers
#' * `smooth.spline`: the obtained smoothing spline (class smooth.spline)
#' * `predict,spline`: numeric smoothing spline as a data.frame
#' * `rmse`: root mean squared error of residuals with respect to smoothed values
#' 
#' @export
#' 
smoothingSpline<-function(x, gas){
  td<-lubridate::decimal_date(as.POSIXct(x$endTime, tz="UTC") - (60*30)) 
  g<-x[,gas]
  dt0<-data.frame(time=td[!is.na(g)], y=g[!is.na(g)])
  dt<-dt0
  
  test=1
  outlier=NULL
  while(test!=0){
    sspl<-stats::smooth.spline(dt)
    p<-stats::predict(sspl, x=dt$time)
    res<-sspl$data$y - p$y
    rmse<-sqrt(mean(res^2))
    r<-abs(res) >= 3*rmse
    outlier=c(outlier, sspl$data$y[r])
    indout=match(outlier, dt0$y)
    dt=dt0[-indout,]
    test=sum(r)
  }
  
  return(list(outliers=outlier, smooth.spline=sspl, predict.spline=as.data.frame(p), rmse=rmse))
}
