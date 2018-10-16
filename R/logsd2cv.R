#' Convert the log-transformed standard deviation from a log-normal variable to the CV.
#'
#' @description
#'
#' @param x
#'
#' @return
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
