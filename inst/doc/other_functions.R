## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  warning = FALSE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(clustAnalytics)

## -----------------------------------------------------------------------------
data(karate, package="igraphdata")
c1 <- membership(cluster_louvain(karate))
c2 <- V(karate)$Faction
reduced_mutual_information(c1, c2, method="approximation2")

## -----------------------------------------------------------------------------
reduced_mutual_information(c1, c2, method="approximation2", normalized=TRUE)

## -----------------------------------------------------------------------------
B <- matrix(c(1, 0.2, 0.2, 1), ncol=2)
G <- barabasi_albert_blocks(m=4, p=c(0.5, 0.5), B=B, t_max=100, type="Hajek", 
                            sample_with_replacement = FALSE)
plot(G, vertex.color=(V(G)$label), vertex.label=NA, vertex.size=10)

## -----------------------------------------------------------------------------
data(karate, package="igraphdata")
apply_subgraphs(g=karate, com=V(karate)$Faction, f=gorder)

