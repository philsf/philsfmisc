geomean <- function(datavector) {
  datavector[(datavector == 0)] <- NA # discard null values
  10^mean(log10(datavector), na.rm = T)
}
