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
