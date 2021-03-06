% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate_CI.R
\name{calculate_CI.p3_class}
\alias{calculate_CI.p3_class}
\title{Confidence interval}
\usage{
calculate_CI.p3_class(x, conf = 0.95)
}
\arguments{
\item{x}{list of length N}

\item{conf}{numeric, alpha}
}
\value{
confidence interval
}
\description{
Confidence interval
}
\details{
Takes as input a list of length N and alpha and calculates a confidence interval for the estimate of the mean in the populaiton.
}
\examples{
set.seed(4)
x <- rnorm(1:10)
x <- make_p3_class(x)
calculate_CI.p3_class(x, 0.9)

}
