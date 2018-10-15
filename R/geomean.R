#'
#' @author Felipe Figueiredo
#' @export

geomean <- function(x) {
  x[(x == 0)] <- NA # discard null values
  10^mean(log10(x), na.rm = T)
}
