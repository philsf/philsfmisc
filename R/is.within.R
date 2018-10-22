#' Test if number is within given interval
#'
#' \code{is.within} tests if object \code{x} is within \code{interval}.
#'
#' This function tests if the given value is contained within a (possibly open) given interval.
#'
#' @param x A numeric x, vector or list.
#' @param interval The (numeric) interval within which \code{x} is being tested.
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

is.within <- function(x, interval, open.interval = FALSE) {
  if (open.interval) return( x > interval[1] & x < interval[2] )
  x >= interval[1] & x <= interval[2]
}
