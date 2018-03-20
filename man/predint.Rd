\name{predint}
\alias{predint}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Prediction Intervals for given data
%%  ~~function to do ... ~~
}
\description{Compute a prediction of a vector, which is assumed normally distributed with unknown mean and variance.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
predint(datavector, alpha = 0.05)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{datavector}{a numeric vector or an R object which is coercible to one by as.double(x)}
  \item{alpha}{the significance level required (default = 0.05)
%%     ~~Describe \code{x} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{a vector of two values
A vector with values giving lower and upper prediction limits for each parameter.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{Felipe Figueiredo
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
x <- rnorm(30)
predint(x)
predint(x, alpha = 0.01)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
