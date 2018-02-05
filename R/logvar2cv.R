logvar2cv <- function(var, digits = 2, na.rm = TRUE) {
  round(sqrt(exp((log(10)^2)*var) - 1)*100 , digits)
}
