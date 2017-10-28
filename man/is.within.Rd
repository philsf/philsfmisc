\name{is.within}
\alias{is.within}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Check if number is within given interval
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
is.within(value, interval, open.interval = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{value}{
A numeric value, vector or list.
}
  \item{interval}{
%%     ~~Describe \code{interval} here~~
The (numeric) interval within which \code{value} is being tested.
}
  \item{open.interval}{
%%     ~~Describe \code{open.interval} here~~
logical: should \code{interval} be regarded as an open interval?
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
The default method for \code{is.within} applied to an atomic vector returns a logical vector of the same length as its argument x, containing TRUE for those elements contained within \code{interval}, and FALSE otherwise.
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
is.within(1.5, c(0,5)) # TRUE
is.within(6, c(0,5)) # FALSE

is.within(c(1.5, 6), c(0,5)) # vector: TRUE, TRUE
is.within(list(1.5, 6), c(0,5)) # list: TRUE, FALSE
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line