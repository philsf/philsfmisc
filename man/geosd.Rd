\name{geosd}
\alias{geosd}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the "geometric standard deviation" of data
%%  ~~function to do ... ~~
}
\description{
The "geometric standard deviation" is not as well-defined as the geometric mean.
This function returns the analogous concept of \code{sd} in the same manner of the geometric mean.
}
\usage{
geosd(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
The anti-log of the \code{sd} of log-transformed data `x`.
Base 10 is assumed as a fixed default in this version.

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
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{geomean}}
}
\examples{
d <- c(10,100,1000)
geosd(d)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
