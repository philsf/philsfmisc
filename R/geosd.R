#' @importFrom stats sd
#'
#' @author Felipe Figueiredo
#' @export

geosd <- function(x) {
  10^sd(log10(x))
}
