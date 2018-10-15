#' @importFrom stats sd
#'
#' @author Felipe Figueiredo
#' @export

geocv <- function(x, na.rm = TRUE) {
  logsd <- sd(log10(x), na.rm = na.rm)
  logsd2cv(logsd)
}
