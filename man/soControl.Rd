% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Reprod.R
\name{soControl}
\alias{soControl}
\title{Control values for order-constrained fit}
\usage{
soControl(
  method = c("ISDM", "EM"),
  eps = 0.005,
  max.iter = 5000,
  max.directions = 0,
  start = ifelse(method == "ISDM", "H0", "uniform"),
  verbose = FALSE
)
}
\arguments{
\item{method}{a string specifying the maximization method}

\item{eps}{a numeric value giving the maximum absolute error in the
log-likelihood}

\item{max.iter}{an integer specifying the maximal number of iterations}

\item{max.directions}{an integer giving the maximal number of directions
considered at one step of the ISDM method.  If zero or negative, it is set to
the number of non-empty cells. A value of 1 corresponds to the VDM algorithm.}

\item{start}{a string specifying the starting setup of the mixing
distribution; "H0" puts weight only on constant vectors (corresponding to the
null hypothesis of no change), "uniform" puts equal weight on all elements.
Only a "uniform" start can be used for the "EM" algorithm.}

\item{verbose}{a logical value; if TRUE details of the optimization are
shown.}
}
\value{
a list with components for each of the possible arguments.
}
\description{
The values supplied in the function call replace the defaults and a list with
all possible arguments is returned.  The returned list is used as the control
argument to the \code{\link{mc.est}}, \code{\link{SO.LRT}}, and
\code{\link{SO.trend.test}} functions.
}
\examples{

# decrease the maximum number iterations and
# request the "EM" algorithm
soControl(method="EM", max.iter=100)

}
\seealso{
\code{\link{mc.est}}, \code{\link{SO.LRT}},
\code{\link{SO.trend.test}}
}
\author{
Aniko Szabo aszabo@mcw.edu
}
\keyword{models}
