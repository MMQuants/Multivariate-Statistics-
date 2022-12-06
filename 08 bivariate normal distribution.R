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

# mean for 2 columns
colMeans(swiss[,2:3])
colMeans(swiss)

#standart deviation for 2 columns
sapply(swiss[,2:3], sd)

# covariation matrix for 2 columns
var(swiss[,2:3])

# covariation matrix for all the data
var(swiss)
