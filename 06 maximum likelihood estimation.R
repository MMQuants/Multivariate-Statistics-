library(UsingR)

lik = function(z,param)
prod(dnorm(z, mean = param[1], sd=param[2]))

lik(0,c(0,1))

1/sqrt(2*pi)

# generate 10 random variables with normali distribution
z =rnorm(10)
z

lik(z,c(0,1))
