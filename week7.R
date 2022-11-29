set.seed(21)
x=0:99; expectx=sum(x/100) # очакване
varx=sum((x-expectx)^2)/100; 
sdx=sqrt(varx) # standard deviation
n=c(2,5,10,20,30,50)
par(mfrow=c(2,3)) # matrix
for(j in n) {
  y=NA
  for(i in 1:500) y[i]=mean(sample(x,j,replace=T)) # sample - choose j values from x, replace=T -> s povtorenie
  hist(y,prob=T)
  curve(dnorm(x,mean=expectx,sd=sdx/sqrt(j)),add=T)
}

# 3 г)
std = 0.5/sqrt(200)
# pnorm((3.6-3.5)/std) - pnorm((3.4-3.5)/std)

1 - pnorm((3.62-3.5)/std)
# another way
pnorm((3.62-3.5)/std, lower.tail = F)
pnorm(3.62, mean = 3.5, sd = 0.5/sqrt(200), lower.tail = F)

# 11
pnorm(1000, mean = 379, sd = sqrt(1250000), lower.tail = F)