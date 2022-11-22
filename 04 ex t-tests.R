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
