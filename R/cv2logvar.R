#' Convert the CV to the log10 var (log-normal variable).
#'
#' \code{cv2logsd} converts the CV from a log-normal variable to the log10-transformed variance.
#'
#' This function converts the CV to the log10-transformed variance by inverting the formula used in \code{logvar2cv}.
#'
#' @param x A numeric value, vector or list.
#'
#' @return Returns the log-transformed variance.
#'
#' @examples
#' cv2logvar(50)
#' # [1] 0.04208748
#'
#' @author Felipe Figueiredo
#' @export

cv2logvar <- function( x ) {
  VAR <- (log((x/100)^2 + 1))/(log(10)^2)
  VAR
}
