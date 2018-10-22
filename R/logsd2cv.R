#' Convert the log10 standard deviation to the CV (log-normal variable).
#'
#' \code{logsd2cv} the log10-transformed \code{sd} from a log-normal variable to the CV.
#'
#' This function converts the log10-transformed standard deviation of a log-normal variable to the CV.
#'
#' @param x The log10-transformed \code{sd} of data.
#'   A numeric value, vector or list.
#'
#' @return Returns the geometric CV (as percentage)
#'
#' @examples
#' d <- c(10,100,1000)
#' sd(log10(d)) # 1
#' logsd2cv(1) # 1413.21\%
#'
#' @author Felipe Figueiredo
#' @export

logsd2cv <- function(x) {
  sqrt(exp((log(10)^2)*x^2) - 1)*100
}
