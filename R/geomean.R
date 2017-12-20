geomean <- function(datavector) {
  datavector <- datavector[!(datavector == 0)] # discard null values
  10^mean(log10(datavector), na.rm = T)
}
