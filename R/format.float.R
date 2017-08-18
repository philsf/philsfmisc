format.float <- function(value, digits = 2) {
  if (any(is.na(value), is.null(value), is.nan(value))) return(NA)
  value <- formatC(value, format = "f", digits = digits)
  value
}
