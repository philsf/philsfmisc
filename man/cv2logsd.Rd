% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cv2logsd.R
\name{cv2logsd}
\alias{cv2logsd}
\title{Convert the CV to the log10 sd (log-normal variable).}
\usage{
cv2logsd(x)
}
\arguments{
\item{x}{A numeric value, vector or list.}
}
\value{
Returns log-transformed sd
}
\description{
\code{cv2logsd} converts the CV from a log-normal variable to the log10-transformed standard deviation.
}
\details{
This function converts the CV to the log10-transformed standard deviation, by taking the square root of \code{cv2logvar}.
}
\examples{
cv2logsd(50)
# [1] 0.2051523

}
\author{
Felipe Figueiredo
}
