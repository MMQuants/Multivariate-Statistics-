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


# task 04
# chisquare for independence
# null hypotesis = INdependent
# alternative hypotesis = dependent 

seatbelt = rbind(c(56,8), c(2,16))
chisq.test(seatbelt)


# task 05
# does smoking depend on gender

tbl = xtabs(~ gender+ amt.smoke, subset = amt.smoke< 98 & gender != 7, data = samhda)
tbl
chisq.test(tbl)

chisq.test(tbl, simulate.p.value = TRUE)


# task 06
# chisquare for homogeneity
# null hypotesis = having the same distribution
# alternative hypotesis = don't have the same distribution 

celaxa = c (2,3,7)
placebo = c(2,8,2)

x = rbind(celaxa, placebo)
x
colnames(x) = c('bad', 'no difference', 'good')
x

chisq.test(x, simulate.p.value = TRUE)
