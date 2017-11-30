cv2var <- function( CV ) {
  VAR <- (log(CV^2 + 1))/(log(10)^2)
  VAR
}
