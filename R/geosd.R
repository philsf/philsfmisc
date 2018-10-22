#' Compute the "geometric standard deviation" of log-normal data.
#'
#' Compute the anti-log of the standard deviation of log10-transformed data.
#'
#' The "geometric standard deviation" is not as well-defined as the geometric mean.
#' This function returns the analogous concept of \code{sd} in the same manner of the geometric mean.
#'
#' @param x A numeric value, vector or list.
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
