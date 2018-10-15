#' @importFrom stats sd
#' @importFrom stats qt
#'
#' @author Felipe Figueiredo
#' @export

predint <- function(datavector, alpha = 0.05) {
  datavector <- datavector[!is.na(datavector)] # discard NA values
  N <- length(datavector)
  xbar <- mean(datavector) # X bar
  ts <- qt(1-alpha/2, N-1) # student's t with N - 1 degrees of freedom
  sdl <- sd(datavector) # SD of log titers
  sq <- sqrt( 1 + 1/N )  # square root term
  range <- c(xbar - ts*sdl*sq, xbar + ts*sdl*sq) # formula
  range
}
