#' Convert the log10 variance to the CV (log-normal variable).
#'
#' \code{logvar2cv} converts the log10-transformed \code{var} of a log-normal variable to the CV.
#'
#' This function converts the log10-transformed variance of a log-normal variable to the CV.
#'
#' @param x The log10-transformed \code{var} of data.
#'   A numeric value, vector or list.
#'
#' @return Returns the geometric CV (as percentage)
#'
#' @examples
#' d <- c(10,100,1000)
#' var(log10(d)) # 1
#' logvar2cv(1) # 1413.21\%
#'
#' @author Felipe Figueiredo
#' @export

logvar2cv <- function(x) {
  sqrt(exp((log(10)^2)*x) - 1)*100
}
