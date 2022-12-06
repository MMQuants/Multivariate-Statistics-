library(mnormt)

install.packages('mvtnorm')
library(mvtnorm)

sigma = matrix(c(4,2,2,3), nrow=2)
x = rmvnorm(n=500, mean=c(1,2), sigma = sigma)
plot(x)
