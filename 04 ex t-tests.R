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
