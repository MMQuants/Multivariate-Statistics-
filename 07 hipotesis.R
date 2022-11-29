library(UsingR)

n = 150000
x = 22695
phat = 22695/ n
p0 = 0.15
SD = sqrt(p0*(1-p0)/n)

z= (phat-p0)/ SD

pnorm(z, lower.tail = FALSE)

pnorm(phat, mean=p0, sd = SD, lower.tail = FALSE)

prop.test(x,n,p=p0, alternative = 'greater')

# two-sided alternative
out = prop.test(x,n,p=p0, alternative = 'two.sided')
out
summary(out)

out$p.value

# task 01
head(samhda)
x = sum(samhda$marijuana==1)
n = length(samhda$marijuana)
prop.test(x,n,p=0.5, alternative = 'two.sided')
x/n


# task 02
n = 50
x = 40
p0 = 0.75

phat = x/n
# we cannot trow away the null hypotesis
prop.test(x,n,p=p0, alternative = 'greater')

# task 03
x=2700
n = 25000
p0 = 0.1

phat = x/n
prop.test(x,n,p=p0, alternative = 'greater')
# we  trow away the null hypotesis