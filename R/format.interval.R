format.interval <- function(interval, digits = 2) {
  if (is.null(interval)) return(NULL) # if no argument passed, return
  if (anyNA(interval)) return(NA) # return NA in case of incomplete interval
  stopifnot(length(interval) == 2) # require an interval as argument
  LL <- format.float(interval[1], digits = digits)
  UL <- format.float(interval[2], digits = digits)
  LL.closure <- "["
  UL.closure <- "]"
  if (LL == -Inf) LL.closure <- "("
  if (UL == Inf) UL.closure <- ")"
  paste0(LL.closure,
         LL,
         ", ",
         UL,
         UL.closure)
}
