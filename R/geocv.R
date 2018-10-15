#' Compute the CV of log-normally distributed data.
#'
#' @description
#'
#' @param x
#' @param na.rm
#'
#' @return
#'
#' @examples
#'
#'
#'
#'
#'
#' @author Felipe Figueiredo
#' @export
#' @importFrom stats sd

geocv <- function(x, na.rm = TRUE) {
  logsd <- sd(log10(x), na.rm = na.rm)
  logsd2cv(logsd)
}
