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
  Must be a vector of two values.

  Values can be either numeric or character.
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
Returns a character value.
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
format.interval(c(1.756, 1.823))

# format.interval(1.5, 1) # error: 1.5 is not an interval

# Input is character
format.interval(c("1.756", "1.823"))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
