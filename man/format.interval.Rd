\name{format.interval}
\alias{format.interval}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Format intervals for printing
}
\description{
Format intervals, given a `digits` argument as significant decimal places.
}
\usage{
format.interval(interval, digits = 2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{interval}{
%%     ~~Describe \code{interval} here~~
}
  \item{digits}{
  Number of fixed digits, after decimal point. (default = 2)
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~

This uses \code{\link{format.float}} for formatting each of the limits of the interval.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Felipe Figueiredo
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (interval, digits = 2)
{
    if (is.null(interval))
        return(NULL)
    if (anyNA(interval))
        return(NA)
    stopifnot(length(interval) == 2)
    LL <- format.float(interval[1], digits = digits)
    UL <- format.float(interval[2], digits = digits)
    LL.closure <- "["
    UL.closure <- "]"
    if (LL == -Inf)
        LL.closure <- "("
    if (UL == Inf)
        UL.closure <- ")"
    paste0(LL.closure, LL, ", ", UL, UL.closure)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
