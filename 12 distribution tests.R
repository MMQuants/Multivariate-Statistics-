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


# plotting
boxplot(sat.m, sat.v)

qqplot(sat.m, sat.v, main = "Math and Verbal SAT score")

# shapiro test for normality 

shapiro.test(sat.m)   # so it is not normally distributed
shapiro.test(sat.v)   # so it is not normally distributed

# task 01 check the height of babies for normal distribution

head(babies)

height = babies$ht[babies$ht < 99]
shapiro.test(height)     # so it is not normally distributed

weight = with(babies, wt[wt<999])
weight
shapiro.test(weight)     # so it is not normally distributed




