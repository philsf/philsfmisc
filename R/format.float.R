#' Format numbers for printing
#'
#' @description Format numbers, given a `digits` argument as significant decimal places.
#'   Numbers are always assumed to be \code{\link[base]{double}}.
#'
#' @param x Value to be formatted.
#'   Input can be a numeric or character value.
#'
#' @param digits Number of fixed digits, after decimal point
#'
#' @return Returns a character value.
#'
#' @examples
#' format.float(0.5)
#' format.float(0.672, 4)
#' format.float(1.4927, 1)
#' format.float(c(1.756, 1.823))
#' # Input is character
#' format.float("1.12543")
#' format.float(c("1.756", "1.823"))
#'
#' # Useful for data frames
#' DF <- data.frame(num = c(1.756, 1.823), char = c("1.756", "1.823"), stringsAsFactors = FALSE)
#' transform(DF, num = format.float(num), char = format.float(char))
#'
#' @author Felipe Figueiredo
#' @export

format.float <- function(x, digits = 2) {
  x <- suppressWarnings(as.numeric(x))
  x <- formatC(x, format = "f", digits = digits)
  x
}
