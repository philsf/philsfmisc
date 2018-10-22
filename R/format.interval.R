#' Format intervals for printing
#'
#' @description Format intervals, given a `digits` argument as significant decimal places.
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
#' @author Felipe Figueiredo
#' @importFrom stringr str_remove
#' @export format.interval

format.interval <- function(interval, digits = 2) {
  if (is.null(interval)) return(NULL) # if no argument passed, return
  if (anyNA(interval)) return(NA) # return NA in case of incomplete interval
  stopifnot(length(interval) == 2) # require an interval as argument
  stringr::str_remove(interval, "%")
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
