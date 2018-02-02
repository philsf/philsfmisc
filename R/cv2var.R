cv2var <- function( CV ) {
  VAR <- (log((CV/100)^2 + 1))/(log(10)^2)
  VAR
}
