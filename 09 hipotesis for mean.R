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

sal = sum(salmon.rate>0.005)
n = length(salmon.rate)

1-pbinom(sal-1, n , 1/2)

# example 03 test if median is different than 22
wilcox.test(log(exec.pay), mu=log(22), n= length(exec.pay), alternative = "two.sided")

pay = sum(exec.pay > 22)
n = length(exec.pay)

probability = 1 - pbinom(max(pay, n-pay)-1, n, 1/2)
probability                     

# example 04 proportion hypothesis testing
phat = c(0.15, 0.1513)
n = c(160000, 150000)

# cannot reject the null hypothesis
prop.test(n*phat, n, alternative = 'less')

# with normal approximation
p = sum(n*phat)/sum(n)

z = (phat[1]-phat[2])/sqrt(p*(1-p)*sum(1/n))
z
pnorm(z)

# example 05
phat01 = 18 / 22
phat02 = 3 / 22
n= 22
p = sum(22*phat01+22*phat02)/(2*22)

prop.test(c(n*phat01, n*phat02), c(n,n), alternative = 'two.sided')

z = (phat01-phat02)/sqrt(p*(1-p)*sum(1/n))
z
pnorm(z, lower.tail = FALSE)

# example 06 hypothesis for mean of 2 samples
m300 = c(284,279,289,292,287,295,285,279,306,298)
m600 = c(298,317,297,279,291,335,299,300,306,291)

plot(density(m300))
plot(density(m600))
qqnorm(m300)
qqnorm(m600)

# null hypothesis is that they have equal standard deviation 
var.test(m300, m600)

t.test(m300, m600, var.equal = TRUE)

# example 07 placebo treatment
Finasteride = c(5,3,5,6,4,4,7,4,3)
placebo =     c(2,3,2,4,2,2,3,4,2)

# check for normality 
boxplot(Finasteride, placebo)
qqnorm(Finasteride)
qqnorm(placebo)
plot(density(Finasteride))
plot(density(placebo))
lines(density(Finasteride), lt=2)

# check  if sd1 = sd2
var.test(Finasteride, placebo)

# check  if mu1 = mu2
t.test(Finasteride, placebo, paired = TRUE, alternative = "two.sided", var.equal = TRUE)

# example 08 exam grades
entrance = c(77,56,64,60,57,53,72,62,65,66)
exit = c(88,74,83,68,58,50,67,64,74,60)
mean(entrance)
mean(exit)

# check for normality 
qqnorm(entrance)
qqnorm(exit)

# check  if sd1 = sd2
var.test(entrance, exit)

# check  if mu1 = mu2
t.test(entrance, exit, paired = TRUE, alternative = "less")

# example 09
A = c(5.8,1.0,1.1,2.1,2.5,1.1,1.0,1.2,3.3,2.7)
B = c(1.5,2.7,6.6,4.6,1.1,1.2,5.7,3.2,1.2,1.3)

# check for normality
plot(density(A))
plot(density(B))
lines(density(B), lt=2)

qqnorm(A)
qqnorm(B)

# Wilcox test
wilcox.test(A, B)

# example 10
head(normtemp)

plot(density(normtemp$temperature[normtemp$gender==1]))
plot(density(normtemp$temperature[normtemp$gender==2]))

t.test(temperature ~ gender, data = normtemp)
