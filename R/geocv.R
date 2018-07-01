geocv <- function(x, na.rm = TRUE) {
  logsd <- sd(log10(x), na.rm = na.rm)
  logsd2cv(logsd, na.rm = na.rm)
}
