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
y = c(35,40,25)
n = sum(y)

phat1 = phat2 = sum(y[1:2]) / (2*n )

phat3 = 1 - phat1 - phat2

phat = c(phat1 , phat2, phat3)

obs = sum((y-n*phat)^2 / (n*phat))

pchisq(obs, df = 2-1, lower.tail = FALSE)


# chi2 = sum(((y-n*p)^2) / (n*p))

# pchisq(chi2, df=2, lower.tail = FALSE)


# auto calculations
chisq.test(y, p=p)



chisq.test(y, p=p)



# task 03 
amt = with(samhda, samhda$amt.smoke[amt.smoke < 98])

y = table(amt)
y
ps = c(0.15, 0.05, 0.05, 0.05, 0.1, 0.2, 0.4)

chisq.test(y, p = ps)
