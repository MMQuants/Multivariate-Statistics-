install.packages('ggplot2')
library(ggplot2)

install.packages('MASS')
library(MASS)

install.packages('fBasics')
library(fBasics)

y = rnorm(1000)
pchiTest(y)

x = runif(1000)
pchiTest(x)

# skeweness = E((x-mu)/sigma)^3    asymmetry

# kurtosis = E((x-mu)/sigma)^4     eksces

