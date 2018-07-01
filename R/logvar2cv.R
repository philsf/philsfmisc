logvar2cv <- function(x, digits = 2, na.rm = TRUE) {
  round(sqrt(exp((log(10)^2)*x) - 1)*100 , digits)
}
