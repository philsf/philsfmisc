#' Compute the geometric mean
#'
#' `geomean` computes the anti-log of the \code{mean} of log10-transformed data.
#'
#' This function first log10-transforms the original data \code{x}.
#' It then back-transforms the \code{mean} of the results from the log10 scale.
#'
#' @param x A numeric value, vector or list.
#'
#' @details If any null values are present in \code{x} they are first replaced with \code{NA}.
#'
#' @return Returns the geometric mean of \code{x}.
#'
#' @examples
#' d <- c(10,100,1000)
#' geomean(d)
#' geomean(c(d,0)) # na.rm is TRUE by default for sd()
#'
#' @author Felipe Figueiredo
#' @export

geomean <- function(x) {
  x[(x == 0)] <- NA # discard null values
  10^mean(log10(x), na.rm = T)
}
