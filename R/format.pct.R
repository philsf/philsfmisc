#' Convenience function to format proportions as percentages
#'
#' @description
#'
#' @param p a numeric vector assumed to be a proportion.
#' @param digits the number of decimal digits to be used in the output.
#' @param pct.symbol (logical) whether or not to include the percent sign in the output.
#'
#' @return
#'
#' @examples
#'
#'
#'
#'
#' @return A character value formatted as percentages
#'
#' @examples
#' format.pct(.1)
#' format.pct(c(.42, .99), 0)
#'
#' m <- 10*matrix(c(1, 1.1, .9, 2), nrow = 2)
#' format.pct(fisher.test(m)$p.value)
#' format.pct(fisher.test(5*m)$p.value)
#' format.pct(fisher.test(m)$conf.int)
#'
#' @author Felipe Figueiredo
#' @export

format.pct <- function(p, digits = 1, pct.symbol = FALSE) {
  symbol <- "%"
  if (!pct.symbol) symbol <- NULL
  paste0(format.float(p*100, digits), symbol)
}
