library(UsingR)

# uniform distribution
# veroqtnostta <1 pri interval min=0, max=3
dunif(x=1, min=0, max=3)

# veroqtnostta <2 pri interval min=0, max=3
punif(q=2, min=0, max =3)

# quantile
qunif(p=1/2, min=0, max =3)

# random generator of uniform distribution experiment
runif(n=1, min=0, max=3)

# find the quantiles
ps <- seq(0,1, by=0.2)
names(ps)<-as.character(seq(0,100, by=20))
ps

qunif(ps, min=1, max=3)

x<-runif(100)
d<-density(x)
d

#draw some
curve(dunif, -0.1, 1.1, ylim=c(0,max(d$y,1)))
lines(d, lty=2)
rug(x)

# Bernoulli distribution
n<-10
p<-1/4
sample(0:1, size=n, replace=TRUE, p=c(1-p,p))

#Binomial distribution
choose(10,5)*(1/2)^5*(1/2)^5   # binomial coeff

dbinom(5, size=10, prob=1/2)

# the probability that x<=6
sum(dbinom(0:6, size=10, prob=1/2))
pbinom(6, size=10, prob=1/2)

pbinom(6, size=10, prob=1/2, lower.tail = FALSE)

p<-1/2
heights<-dbinom(0:10, size=n, prob=p)
plot(0:10, heights, type='h', main = "Spike plot", xlab= "k")
points(0:10, heights, pch=16, cex=2)

pbinom(60, size=100, prob=0.62)

# Normal Distribution
pnorm(1, mean=0, sd=1)
pnorm(4.5, mean=4, sd=1/2)
qnorm(c(0.25,0.5,0.75))

mu = 178.3
sigma = 7.34

pnorm(190, mean = mu, sd = sigma, lower.tail= FALSE)*100

# student distribution
qt(c(0.025, 0.975), df=10)

# chi squared distribution
qchisq(c(0.025, 0.975), df=10)


# task 01
dbinom(49800,100000, prob=1/2)

# task 02
pbinom(35, 100, prob=0.4)

# task 03
pnorm(2.2, mean=0, sd=1)

big = pnorm(2, mean=0, sd=1)
small = pnorm(1, mean=0, sd=1)
big - small

pnorm(2.5, mean=0, sd=1, lower.tail = FALSE)
1 - pnorm(2.5, mean=0, sd=1)

qnorm(0.95, mean=0, sd=1)

# task 04
1-pnorm(450, mean=350, sd=75)

# task 05
1- pnorm(22, mean=20.6, sd =5.5)

pnorm(23, mean=20.6, sd =5.5)*1000000

# taks 06
mu = 3.2
sd = 0.35

big = pnorm(4, mean=3.2, sd=0.35)
small = pnorm(3.5, mean=3.2, sd=0.35)
(big - small)*100
