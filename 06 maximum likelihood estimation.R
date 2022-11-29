library(UsingR)

lik = function(z,param)
prod(dnorm(z, mean = param[1], sd=param[2]))

lik(0,c(0,1))

1/sqrt(2*pi)
