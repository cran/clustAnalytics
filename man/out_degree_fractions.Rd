% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scoring_functions_Rcpp.R
\name{out_degree_fractions}
\alias{out_degree_fractions}
\title{Maximum, Average, and Flake Out Degree Fractions of a Graph Partition}
\usage{
out_degree_fractions(g, com, edgelist)
}
\arguments{
\item{g}{Graph to be analyzed (as an \code{igraph} object)}

\item{com}{Community membership vector. Each element corresponds to a vertex
of the graph, and contains the index of the community it belongs to.}

\item{edgelist}{alternatively, the edgelist of the graph}
}
\value{
A numeric matrix where each row corresponds to a community, and the 
columns contain the max, average and flake ODFs respectively.
}
\description{
Given a weighted graph and a partition into communities, returns the
maximum, average and flake out degree fractions of each community.
}
