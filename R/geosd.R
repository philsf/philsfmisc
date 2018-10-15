#'
#' @description
#'
#' @param x
#'
#' @return
#'
#' @examples
#'
#'
#'
#'
#' @author Felipe Figueiredo
#' @export
#' @importFrom stats sd

geosd <- function(x) {
  10^sd(log10(x))
}
