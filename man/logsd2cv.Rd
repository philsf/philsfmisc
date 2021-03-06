% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logsd2cv.R
\name{logsd2cv}
\alias{logsd2cv}
\title{Convert the log10 standard deviation to the CV (log-normal variable).}
\usage{
logsd2cv(x)
}
\arguments{
\item{x}{The log10-transformed \code{sd} of data.
A numeric value, vector or list.}
}
\value{
Returns the geometric CV (as percentage)
}
\description{
\code{logsd2cv} the log10-transformed \code{sd} from a log-normal variable to the CV.
}
\details{
This function converts the log10-transformed standard deviation of a log-normal variable to the CV.
}
\examples{
d <- c(10,100,1000)
sd(log10(d)) # 1
logsd2cv(1) # 1413.21\\%

}
\author{
Felipe Figueiredo
}
