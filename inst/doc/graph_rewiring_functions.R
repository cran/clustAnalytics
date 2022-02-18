## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  warning = FALSE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(clustAnalytics)

## -----------------------------------------------------------------------------
data(g_forex, package="clustAnalytics")
rewireCpp(g=g_forex, weight_sel="const_var", lower_bound=0, upper_bound=1)

## -----------------------------------------------------------------------------
data(karate, package="igraphdata")
rewired_karate <- rewireCpp(karate, weight_sel="max_weight")
oldpar <- par(mfrow=c(1,2), mai=c(0,0.1,0.3,0.1)) #save original parameters
plot(karate, main="karate")
plot(rewired_karate, main="rewired_karate")
par(oldpar) #restore original parameters

