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

# correlation matrix for all the data
cor(swiss)

# correlation importance test
cor.test(swiss[,2], swiss[,3])


install.packages('psychometric')
library(psychometric)

#confidence interval for Pearson correlation
CIr(-0.6865, 47,level = 0.95)

#confidence interval for Fisher correlation based
CIz(-0.6865, 47,level = 0.95)

# Spearman correlation
cor.test(swiss[,2], swiss[,3], method = 'spearman')

# Kendall correlation
cor.test(swiss[,2], swiss[,3], method = 'kendall')

head(swiss)
swiss1 = data.frame(swiss[,2], swiss[,3])
head(swiss1)

# minimize log likelihood
biv5 = function(par){
  cov = par[5]*sqrt(par[3]*par[4])
  biv5 = sum(-dmvnorm(swiss1, mean = c(par[1],par[2]), sigma = matrix(c(par[3], cov, cov, par[4]),2,2),log=TRUE))
  print(c(par, biv5))
}

res = nlm(biv5, c(45,45,1600,1600, 8), hessian = TRUE)


