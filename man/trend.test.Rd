% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Reprod.R
\name{trend.test}
\alias{trend.test}
\title{Test for increasing trend with correlated binary data}
\usage{
trend.test(
  cbdata,
  test = c("RS", "GEE", "GEEtrend", "GEEall", "SO"),
  exact = test == "SO",
  R = 100,
  control = soControl()
)
}
\arguments{
\item{cbdata}{a \code{\link{CBData}} object}

\item{test}{character string defining the desired test statistic. "RS"
performs the Rao-Scott test (\code{\link{RS.trend.test}}), "SO" performs the
stochastic ordering test (\code{\link{SO.trend.test}}), "GEE", "GEEtrend",
"GEEall" perform the GEE-based test (\code{\link{GEE.trend.test}}) with
constant, linearly modeled, and freely varying scale parameters,
respectively.}

\item{exact}{logical, should an exact permutation test be performed. Only an
exact test can be performed for "SO". The default is to use the asymptotic
p-values except for "SO".}

\item{R}{integer, number of permutations for the exact test}

\item{control}{an optional list of control settings for the stochastic order
("SO") test, usually a call to \code{\link{soControl}}.  See there for the
names of the settable control values and their effect.}
}
\value{
A list with two components and an optional "boot" attribute that
contains the detailed results of the permutation test as an object of class
\code{\link[boot]{boot}} if an exact test was performed.

\item{statistic}{numeric, the value of the test statistic}

\item{p.val}{numeric, asymptotic one-sided p-value of the test}
}
\description{
The \code{trend.test} function provides a common interface to the trend tests
implemented in this package: \code{\link{SO.trend.test}},
\code{\link{RS.trend.test}}, and \code{\link{GEE.trend.test}}. The details of
each test can be found on their help page.
}
\examples{

data(shelltox)
trend.test(shelltox, test="RS")
set.seed(5724)
#R=50 is too low to get a good estimate of the p-value
trend.test(shelltox, test="RS", R=50, exact=TRUE)

}
\seealso{
\code{\link{SO.trend.test}}, \code{\link{RS.trend.test}}, and
\code{\link{GEE.trend.test}} for details about the available tests.
}
\author{
Aniko Szabo, aszabo@mcw.edu
}
\keyword{htest}
\keyword{nonparametric}
