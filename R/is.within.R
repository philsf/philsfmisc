#' Check if number is within given interval
#'
#' @description
#'
#' @param value A numeric value, vector or list.
#' @param interval The (numeric) interval within which \code{value} is being tested.
#' @param open.interval logical: should \code{interval} be regarded as an open interval?
#'
#' @return The default method for \code{is.within} applied to an atomic vector returns
#'  a logical vector of the same length as its argument x, containing TRUE for those elements contained within \code{interval}, and FALSE otherwise.
#'
#' @examples
#' is.within(1.5, c(0,5)) # TRUE
#' is.within(6, c(0,5)) # FALSE
#'
#' is.within(c(1.5, 6), c(0,5)) # vector: TRUE, TRUE
#' is.within(list(1.5, 6), c(0,5)) # list: TRUE, FALSE
#'
#' @author Felipe Figueiredo
#' @export is.within

is.within <- function(value, interval, open.interval = FALSE) {
  if (open.interval) return( value > interval[1] & value < interval[2] )
  value >= interval[1] & value <= interval[2]
}
