format.float <- function(value, digits = 2) {
  value <- suppressWarnings(as.numeric(value))
  value <- formatC(value, format = "f", digits = digits)
  value
}
