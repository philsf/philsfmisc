cv2logvar <- function( x ) {
  VAR <- (log((x/100)^2 + 1))/(log(10)^2)
  VAR
}
