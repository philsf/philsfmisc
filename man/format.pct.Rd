\name{format.pct}
\alias{format.pct}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Convenience function to format proportions as percentages
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
format.pct(p, digits = 1, pct.symbol = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
%%     ~~Describe \code{x} here~~ 
  }
  \item{digits}{
  
  }
  \item{pct.symbol}{
  
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
}
\examples{
format.pct(.1)
format.pct(c(.42, .99), 0)

m <- 10*matrix(c(1, 1.1, .9, 2), nrow = 2)
format.pct(fisher.test(m)$p.value)
format.pct(fisher.test(5*m)$p.value)
format.pct(fisher.test(m)$conf.int)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
