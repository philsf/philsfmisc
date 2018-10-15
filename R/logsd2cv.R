#'
#' @author Felipe Figueiredo
#' @export
#'

logsd2cv <- function(x) {
  sqrt(exp((log(10)^2)*x^2) - 1)*100
}
