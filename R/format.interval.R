#' Format intervals for printing
#'
#' \code{format.interval} prepares intervals for results printing.
#'
#' This function formats a given interval with the given number of decimal digits.
#'   Numbers are always assumed to be \code{\link[base]{double}}.
#'   If there is a percent sign in \code{x}, it is removed prior to formatting by \code{format.float}.
#'
#' @param interval Must be a vector of two values.
#'   Values can be either numeric or character.
#'
#' @param digits Number of fixed digits, after decimal point.
#'
#' @return Returns a character value.
#'
#' @examples
#' format.interval(c(1.756, 1.823))
#' # format.interval(1.5, 1) # error: 1.5 is not an interval
#'
#' # Input is character
#' format.interval(c("1.756", "1.823"))
#'
#' # Input is percentage
#' format.interval(c("10%", "15%"), 1)
#'
#' @author Felipe Figueiredo
#' @export format.interval

format.interval <- function(interval, digits = 2) {
  if (is.null(interval)) return(NULL) # if no argument passed, return
  if (anyNA(interval)) return(NA) # return NA in case of incomplete interval
  stopifnot(length(interval) == 2) # require an interval as argument
  LL <- format.float(interval[1], digits = digits)
  UL <- format.float(interval[2], digits = digits)
  LL.closure <- "["
  UL.closure <- "]"
  if (LL == -Inf) LL.closure <- "("
  if (UL == Inf) UL.closure <- ")"
  paste0(LL.closure,
         LL,
         ", ",
         UL,
         UL.closure)
}
