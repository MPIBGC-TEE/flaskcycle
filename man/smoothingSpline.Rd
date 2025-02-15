% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/smoothingSpline.R
\name{smoothingSpline}
\alias{smoothingSpline}
\title{Smoothing spline and outlier identification for a specific gas species}
\usage{
smoothingSpline(x, gas)
}
\arguments{
\item{x}{release data.frame}

\item{gas}{character string with the name of the gas to plot}
}
\value{
A list with three elements:
\itemize{
\item \code{outliers}: numeric vector with identified outliers
\item \code{smooth.spline}: the obtained smoothing spline (class smooth.spline)
\item \verb{predict,spline}: numeric smoothing spline as a data.frame
\item \code{rmse}: root mean squared error of residuals with respect to smoothed values
}
}
\description{
Smoothing spline and outlier identification for a specific gas species
}
