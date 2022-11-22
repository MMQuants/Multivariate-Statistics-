library(UsingR)

qnorm(p=0.975, 0, 1)
n <- 1012
x <- 466
phat <- x/n
SD <- sqrt(phat*(1-phat)/n)
z <- qnorm(p=0.975, 0, 1)

phat+c(-1,1)*z*SD

# renaming confidence intervals values
c(lower = phat-z*SD, upper = phat+z*SD )

prop.test(x,n,conf.level = 0.975)


# task 01
x=80
n = 125
phat = x/n
alpha = 1 - 0.9
z = qnorm(1-alpha/2)

# variant01
SD = sqrt(phat*(1-phat)/n)
(phat+c(-1,1)*z*SD)*100

# variant02
prop.test(x,n,conf.level = 0.9)

# variant03
binom.test(x,n,conf.level = 0.9)$conf.int

# variant04
confint(binom.test(x,n,conf.level = 0.9))

#task 02 n= 100 , phat = 0.45   80% and 90% conf intervals
n= 100 
phat = 0.45
alpha1 = 1-0.8
z = qnorm(1-alpha/2)

## answer for 80% conf intervals
prop.test(x,n,conf.level = 0.8)
binom.test(x,n,conf.level = 0.8)$conf.int
confint(binom.test(x,n,conf.level = 0.8))

## answer for 90% conf intervals
prop.test(x,n,conf.level = 0.9)
binom.test(x,n,conf.level = 0.9)$conf.int
confint(binom.test(x,n,conf.level = 0.9))


# task 03
z1 = qnorm(0.975)
z2 = qnorm(0.9)
# answer
(z1/0.02)^2
(z2/0.02)^2

# task 04 student distribution
n=30
xbar = 66
s = 4
alpha = 1-0.8
tstar = qt(1-alpha/2, df=n-1)
SE = s/sqrt(n)
# answer
xbar+c(-1,1)*tstar*SE

# task 05
OZS = c(1.95,1.8,2.1,1.82,1.75,2.01,1.83,1.9)
qqnorm(OZS) # visual check for normal distribution

confint(t.test(OZS, conf.level = 0.9))

# one sided intervals
x = c(175, 185,170,184,175)
t.test(x, conf.level = 0.9, alternative = 'less')
