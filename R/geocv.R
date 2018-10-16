#' Compute the CV of log-normally distributed data.
#'
#' @description
#'
#' @param x A numeric value, vector or list.
#' @param na.rm (logical) whether or not to remove \code{NA} values from computation
#'
#' @return Returns the geometric CV (as percentage)
#'
#' @examples
#' d <- c(10,100,1000)
#' geocv(d)
#' geocv(d) == logsd2cv(1)
#'
#' @author Felipe Figueiredo
#' @export
#' @importFrom stats sd

geocv <- function(x, na.rm = TRUE) {
  logsd <- sd(log10(x), na.rm = na.rm)
  logsd2cv(logsd)
}
