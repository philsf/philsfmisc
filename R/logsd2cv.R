logsd2cv <- function(logsd, digits = 2, na.rm = TRUE) {
  round(sqrt(exp((log(10)^2)*logsd^2) - 1)*100 , digits)
}
