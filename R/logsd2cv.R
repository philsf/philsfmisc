logsd2cv <- function(x, na.rm = TRUE) {
  sqrt(exp((log(10)^2)*x^2) - 1)*100
}
