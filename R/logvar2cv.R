#'
#' @description
#'
#' @param x
#'
#' @return
#'
#' @examples
#'
#'
#'
#'
#' @author Felipe Figueiredo
#' @export

logvar2cv <- function(x) {
  sqrt(exp((log(10)^2)*x) - 1)*100
}
