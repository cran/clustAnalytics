## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  warning = FALSE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(clustAnalytics)

## -----------------------------------------------------------------------------
data(karate, package="igraphdata")
weighted_clustering_coefficient(karate)

## -----------------------------------------------------------------------------
apply_subgraphs(karate, V(karate)$Faction, weighted_clustering_coefficient)

