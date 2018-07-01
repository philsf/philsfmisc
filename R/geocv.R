geocv <- function(x, digits = 2, na.rm = TRUE) {
  logsd <- sd(log10(x), na.rm = na.rm)
  logsd2cv(logsd, digits = digits, na.rm = na.rm)
}
