sample = rnorm(10,5,6)
mean(sample)
var(sample)
sqrt(var(sample))
sd(sample)
t.test(sample)
t.test(sample, mu=5)

# second sample a bigger one
sample2 = rnorm(20,10,2)
sample2
t.test(sample, sample2)

# Two Sample t-test
t.test(sample, sample2, var.equal = TRUE)

# F test testing variance
var.test(sample, sample2)

res = t.test(sample, sample2, var.equal = TRUE)
res$p.value
res

res$estimate

data = data.frame(method = rep(c('a','b','c'), each=10),score=c(85,86,88,75,78,94,98,79,71,80,91,92,93,85,87,84,82,88,95,96,79,78,88,94,92,85,83,85,82,81))
data

# analysis of variance
model1 = aov(score ~ method, data=data)

# descriptive statistics
model1

summary(model1)

# bartlet
# compare more than 2 samples's variance
bartlett.test(score ~ method, dat = data)



