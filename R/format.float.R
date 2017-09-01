format.float <- function(value, digits = 2) {
  value <- formatC(value, format = "f", digits = digits)
  value
}
