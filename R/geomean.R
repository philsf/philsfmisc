geomean <- function(datavector) {
  10^mean(log10(datavector), na.rm = T)
}
