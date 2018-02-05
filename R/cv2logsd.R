cv2logsd <- function(CV) {
  SD <- sqrt( cv2logvar(CV) )
  SD
}
