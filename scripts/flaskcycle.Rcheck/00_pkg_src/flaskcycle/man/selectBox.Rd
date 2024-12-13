% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/selectBox.R
\name{selectBox}
\alias{selectBox}
\title{Selects data for a single box from all sampled boxes}
\usage{
selectBox(box, year = NULL, sampledBoxes)
}
\arguments{
\item{box}{character string with box ID}

\item{year}{integer with the year of sampling}

\item{sampledBoxes}{character string with the path of the report of all sampled boxes}
}
\value{
sampling report for one selected box
}
\description{
Selects data for a single box from all sampled boxes
}
\examples{
selectBox(box="B0171", year=2023, sampledBoxes = "~/Repos/ATTO_flask_sampling/FlaskCycle/packedBoxes/sampledBoxes.csv")
selectBox(box="B0171", sampledBoxes = "~/Repos/ATTO_flask_sampling/FlaskCycle/packedBoxes/sampledBoxes.csv")

}
