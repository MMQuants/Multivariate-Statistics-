library(UsingR)

# example 01: check if median is equal to 5
calls = c(2,1,3,3,3,3,1,3,16,2,2,12,20,3,1)

mean(calls)

obs = sum(calls > 5)

n = length(calls)

# reject the null hypothesis
1-pbinom(n-obs-1, n, 1/2)

# example 02 check if median is more than 0.005
head(salmon.rate)
plot(density(salmon.rate))

plot(density(log(salmon.rate)))

#check for normality
qqnorm(log(salmon.rate))

# Wilcox test check if median is more than 0.005
# we cannot reject the  null hypothesis
wilcox.test(log(salmon.rate), mu=log(0.005), n= length(salmon.rate), alternative = "greater")

