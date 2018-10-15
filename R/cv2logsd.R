#'
#' @author Felipe Figueiredo
#' @export
#'
cv2logsd <- function(x) {
  SD <- sqrt( cv2logvar(x) )
  SD
}
