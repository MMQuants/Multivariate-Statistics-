library(mnormt)

install.packages('mvtnorm')
library(mvtnorm)

sigma = matrix(c(4,2,2,3), nrow=2)
x = rmvnorm(n=500, mean=c(1,2), sigma = sigma)
head(x)
plot(x)

colMeans(x)
var(x)

data(swiss)
help(swiss)
head(swiss)

colMeans(swiss[,2:3])
colMeans(swiss)

sapply(swiss[,2:3], sd)
