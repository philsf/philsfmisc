logsd2cv <- function(logsd, digits = 2, na.rm = TRUE) {
  round(sqrt(exp(logsd^2) - 1)*100 , digits)
}
