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
scoring_functions(karate, V(karate)$Faction, type="local")
scoring_functions(karate, V(karate)$Faction, type="global")

## -----------------------------------------------------------------------------
cut_ratio(karate, V(karate)$Faction)

## -----------------------------------------------------------------------------
data(karate, package="igraphdata")
E(karate)
rewired_karate <- rewireCpp(karate, weight_sel = "max_weight")
E(rewired_karate)

## -----------------------------------------------------------------------------
data(foodwebs, package="igraphdata")
rewired_ChesLower <- rewireCpp(foodwebs$ChesLower, weight_sel = "max_weight")

## -----------------------------------------------------------------------------
# this corresponds to the club each member ended up with after the split, 
# which we could consider the ground truth clustering for this graph.
significance_table_karate <- evaluate_significance(karate,
                                                   alg_list=list(Louvain=cluster_louvain, 
                                                                 "label prop"= cluster_label_prop, 
                                                                 walktrap=cluster_walktrap),
                                                   gt_clustering=V(karate)$Faction)
significance_table_karate

## -----------------------------------------------------------------------------
significance_table_karate_r <- evaluate_significance_r(karate, 
                                                       alg_list=list(Louvain=cluster_louvain, 
                                                                 "label prop"= cluster_label_prop, 
                                                                 walktrap=cluster_walktrap),
                                                       gt_clustering=V(karate)$Faction,
                                                       weight_sel="max_weight",
                                                       n_reps=10)

## -----------------------------------------------------------------------------
pm <- matrix (c(.3, .001, .001, .003,
                .001, .2, .005, .002,
                .001, .005, .2, .001,
                .003, .002, .001, .3), nrow=4, ncol=4)
g_sbm <- sample_sbm(100, pref.matrix=pm, block.sizes=c(25,25,25,25))
E(g_sbm)$weight <- 1
significance_table_sbm <- evaluate_significance(g_sbm)
significance_table_sbm

## -----------------------------------------------------------------------------
data(package="clustAnalytics",g_forex)
significance_table_karate_r <- evaluate_significance_r(karate,  
                                                   gt_clustering=V(karate)$Faction,
                                                   weight_sel = "const_var",
                                                   n_reps=5, w_max=1)


## -----------------------------------------------------------------------------
b_karate <- boot_alg_list(g=karate, return_data=FALSE, R=99) 
b_karate

## -----------------------------------------------------------------------------
b_sbm <- boot_alg_list(g=g_sbm, return_data=FALSE, R=99)
b_sbm

