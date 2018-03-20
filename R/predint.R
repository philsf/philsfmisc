predint <- function(datavector, level = 0.95) {
  datavector <- datavector[!is.na(datavector)] # discard NA values
  N <- length(datavector)
  xbar <- mean(datavector, na.rm = na.rm) # X bar
  ts <- qt(1-alpha/2, N-1) # student's t with N - 1 degrees of freedom
  sdl <- sd(datavector, na.rm = na.rm) # SD of log titers
  sq <- sqrt( 1 + 1/N )  # square root term
  range <- c(xbar - ts*sdl*sq, xbar + ts*sdl*sq) # formula
  range
}
