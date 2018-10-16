#' Prediction Intervals for given data
#'
#' @description Compute a prediction interval of a vector, which is assumed
#'  normally distributed with unknown mean and variance.
#'
#' @param datavector A numeric value, vector or list.
#' @param alpha the significance level required
#'
#' @return a vector of two values
#'   A vector with values giving lower and upper prediction limits for each parameter.
#'
#' @examples
#' x <- rnorm(30)
#' predint(x)
#'
#' @author Felipe Figueiredo
#' @export
#' @importFrom stats sd
#' @importFrom stats qt

predint <- function(datavector, alpha = 0.05) {
  datavector <- datavector[!is.na(datavector)] # discard NA values
  N <- length(datavector)
  xbar <- mean(datavector) # X bar
  ts <- qt(1-alpha/2, N-1) # student's t with N - 1 degrees of freedom
  sdl <- sd(datavector) # SD of log titers
  sq <- sqrt( 1 + 1/N )  # square root term
  range <- c(xbar - ts*sdl*sq, xbar + ts*sdl*sq) # formula
  range
}
