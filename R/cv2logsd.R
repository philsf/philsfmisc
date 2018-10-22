#' Convert the CV from a log-normal variable to the log-transformed standard deviation.
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
