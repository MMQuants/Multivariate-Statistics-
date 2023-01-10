# Kolmogorov - Smirnov test

library(UsingR)

x = rnorm(100, mean = 5, sd = 2)
x

plot(x)

ks.test(x, "pnorm", mean = 0, sd = 2)

ks.test(x, "pnorm", mean = 5, sd = 1)

