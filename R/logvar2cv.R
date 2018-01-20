logvar2cv <- function(var, digits = 2, na.rm = TRUE) {
  round(sqrt(exp(var) - 1)*100 , digits)
}
