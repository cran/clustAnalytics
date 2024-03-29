% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/corrected_mutual_information.R
\name{H_fractions_rows}
\alias{H_fractions_rows}
\title{Estimates |H_i|/|H_(i+1)| for the first n_rows rows}
\usage{
H_fractions_rows(M, n_rows, error = 0.01)
}
\arguments{
\item{M}{contingency table}

\item{n_rows}{number of rows}

\item{error}{for the convergence of the method}
}
\value{
vector with all the |H_i|/|H_(i+1)| fractions
}
\description{
Estimates |H_i|/|H_(i+1)| for the first n_rows rows
}
\keyword{internal}
