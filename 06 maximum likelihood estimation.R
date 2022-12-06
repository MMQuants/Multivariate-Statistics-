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
  sum(dnorm(x, mean=mu, sd=sigma, log=TRUE))
}

# max log likelihood estimation
mle = maxLik(logLik = logLikFun, start =c(mu=0, sigma=1))
summary(mle)

# plotting multi normal distribution
x = seq(-3, 3, 0.1)
y = seq(-3, 3, 0.1)

mu = c(0,0)
sigma = matrix(c(2,-1,-1,2), nrow=2)
sigma

install.packages('mnormt')
library(mnormt)

f = function(x,y){
  
  dmnorm(cbind(x,y),mu,sigma)
}

z = outer(x,y,f)
contour(x,y,z)

persp(x,y,z, theta=-30, phi=25, expand=0.6, ticktype= 'detailed')

