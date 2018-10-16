#' Convert the log-transformed variance from a log-normal variable to the CV.
#'
#' @description
#'
#' @param x A numeric value, vector or list.
#'
#' @return
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
