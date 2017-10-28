is.within <- function(value, interval, open.interval = FALSE) {
  if (open.interval) return( value > interval[1] & value < interval[2] )
  value >= interval[1] & value <= interval[2]
}
