\name{format.float}
\alias{format.float}
\alias{format.double}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Format numbers for printing
}
\description{
Format numbers, given a `digits` argument as significant decimal places.

{Numbers are always assumed to be \code{\link[base]{double}}.}
}
\usage{
format.float(x, digits)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
  Value to be formatted.
  Input can be a numeric or character value.
  }
  \item{digits}{
  Number of fixed digits, after decimal point (default = 2)
  }
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a character value.
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
\code{format.float} does NOT work with \code{factor} values.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link[base]{numeric}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
format.float(0.5)
format.float(0.672, 4)
format.float(1.4927, 1)
format.float(c(1.756, 1.823))

# Input is character
format.float("1.12543")
format.float(c("1.756", "1.823"))

# Useful for data frames
DF <- data.frame(num = c(1.756, 1.823), char = c("1.756", "1.823"), stringsAsFactors = FALSE)
transform(DF, num = format.float(num), char = format.float(char))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
