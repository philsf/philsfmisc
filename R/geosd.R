#' Compute the "geometric standard deviation" of log-normal data.
#'
#' `geosd` computes the anti-log of the standard deviation of log10-transformed data.
#'
#' The "geometric standard deviation" is not as well-defined as the geometric mean.
#' Here we apply the analogous concept of the geometric mean to the \code{sd}.
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
