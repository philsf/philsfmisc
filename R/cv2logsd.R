#' Convert the CV to the log10 sd (log-normal variable).
#'
#' \code{cv2logsd} converts the CV from a log-normal variable to the log10-transformed standard deviation.
#'
#' This function converts the CV to the log10-transformed standard deviation, by taking the square root of \code{cv2logvar}.
#'
#' @param x A numeric value, vector or list.
#'
#' @return Returns log-transformed sd
#'
#' @examples
#' cv2logsd(50)
#' # [1] 0.2051523
#'
#' @author Felipe Figueiredo
#' @export

cv2logsd <- function(x) {
  SD <- sqrt( cv2logvar(x) )
  SD
}
