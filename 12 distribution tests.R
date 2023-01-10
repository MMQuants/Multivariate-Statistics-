# Kolmogorov - Smirnov test

library(UsingR)

x = rnorm(100, mean = 5, sd = 2)
x

plot(x)

ks.test(x, "pnorm", mean = 0, sd = 2)

ks.test(x, "pnorm", mean = 5, sd = 1)

# we have 2 samples does they have identical distributions
head(SAT)

sat.m = SAT$math
sat.v = SAT$verbal

ks.test(sat.m, sat.v) # so they do not have the same distribution

head(stud.recs)
ks.test(stud.recs$sat.m, stud.recs$sat.v)
