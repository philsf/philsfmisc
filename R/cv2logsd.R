#' Convert the CV from a log-normal variable to the log-transformed standard deviation.
#' @description
#'
#' @param x
#'
#' @return
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
