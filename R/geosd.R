#' Compute the "geometric standard deviation" of data
#'
#' @description The "geometric standard deviation" is not as well-defined as the geometric mean.
#'  This function returns the analogous concept of \code{sd} in the same manner of the geometric mean.
#'
#' @param x
#'
#' @return The anti-log of the \code{sd} of log-transformed data `x`.
#'   Base 10 is assumed as a fixed default in this version.
#'
#' @examples
#' d <- c(10,100,1000)
#' geosd(d)
#'
#' @author Felipe Figueiredo
#' @export
#' @importFrom stats sd

geosd <- function(x) {
  10^sd(log10(x))
}
