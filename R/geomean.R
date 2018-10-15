#' Compute the geometric mean
#'
#' @param x vector of numeric.
#' @details If any null values are present in \code{x} they are first replaced with \code{NA}.
#' @return Returns the geometric mean of \code{x}.
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
