library(UsingR)
# task 01
colors = c('blue', 'brown', 'green', 'orange', 'red', 'yellow', 'purple')

probs = c(1,1,1,1,2,2,2)

probs = probs / sum(probs)

bag = sample(colors, 30, replace = TRUE, prob = probs)

table(bag)

# task 02

y = c(35,40,25)

p = c(35,35,30)

p = p / sum(p)

n = sum(y)

# manual calculations
chi2 = sum((y-n*p)^2 / n*p)

pchisq(chi2, df=2, lower.tail = FALSE)


# auto calculations
chisq.test(y, p)

