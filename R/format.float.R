#'
#' @author Felipe Figueiredo
#' @export
#'
format.float <- function(x, digits = 2) {
  x <- suppressWarnings(as.numeric(x))
  x <- formatC(x, format = "f", digits = digits)
  x
}
