% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scoring_functions_Rcpp.R
\name{conductance}
\alias{conductance}
\title{Conductance}
\usage{
conductance(g, com)
}
\arguments{
\item{g}{Graph to be analyzed (as an \code{igraph} object). If the edges have a "weight"
attribute, those will be used as weights.}

\item{com}{community membership integer vector. Each element corresponds to a vertex.}
}
\value{
Numeric vector with the conductance of each community.
}
\description{
Conductance of a graph's communities, which is given by
\deqn{\frac{c_s}{2m_s + c_s}},
where \eqn{c_s} is the weight of the edges connecting the community s to the rest
of the graph, and m_s is the internal weight of the community.
}
\examples{
data(karate, package="igraphdata")
conductance(karate, membership(cluster_louvain(karate)))
}
\seealso{
Other cluster scoring functions: 
\code{\link{FOMD}()},
\code{\link{average_degree}()},
\code{\link{average_odf}()},
\code{\link{coverage}()},
\code{\link{cut_ratio}()},
\code{\link{density_ratio}()},
\code{\link{edges_inside}()},
\code{\link{expansion}()},
\code{\link{internal_density}()},
\code{\link{max_odf}()},
\code{\link{normalized_cut}()},
\code{\link{scoring_functions}()},
\code{\link{weighted_clustering_coefficient}()},
\code{\link{weighted_transitivity}()}
}
\concept{cluster scoring functions}
