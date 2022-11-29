library(UsingR)

n = 150000
phat = 22695/ n
p0 = 0.15
SD = sqrt(p0*(1-p0)/n)

z= (phat-p0)/ SD

pnorm(z, lower.tail = FALSE)

pnorm(phat, mean=p0, sd = SD, lower.tail = FALSE)
