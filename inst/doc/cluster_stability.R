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
boot_alg_list(g=karate, return_data=FALSE, R=99,
              alg_list=list(Louvain=cluster_louvain, 
                            "label prop"= cluster_label_prop, 
                            walktrap=cluster_walktrap)) 

