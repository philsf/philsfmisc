#'
#' @author Felipe Figueiredo
#' @export

format.pct <- function(p, digits = 1, pct.symbol = FALSE) {
  symbol <- "%"
  if (!pct.symbol) symbol <- NULL
  paste0(format.float(p*100, digits), symbol)
}
