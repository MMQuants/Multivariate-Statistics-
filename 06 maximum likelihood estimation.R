library(UsingR)

lik = function(z,param){
  prod(dnorm(z, mean = param[1], sd=param[2])) 
}


lik(0,c(0,1))

1/sqrt(2*pi)

# generate 10 random variables with normali distribution
z =rnorm(10)
z

lik(z,c(0,1))

install.packages("maxLik")
library(maxLik)

x= rnorm(100, mean=1, sd=2)

# log likelihood function
logLikFun = function(param) {
  mu = param[1]
  sigma = param[2]
  sum(dnorm(x, mean=mu, sd=sigme, log=TRUE))
}

