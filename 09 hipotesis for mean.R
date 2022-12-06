library(UsingR)

# example: check if median is equal to 5
calls = c(2,1,3,3,3,3,1,3,16,2,2,12,20,3,1)

mean(calls)

obs = sum(calls > 5)

n = length(calls)

# reject the null hypothesis
1-pbinom(n-obs-1, n, 1/2)
