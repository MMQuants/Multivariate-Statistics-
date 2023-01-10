library(UsingR)

res.mhr = lm(maxrate ~ age, data = heartrate)
res.mhr

summary(res.mhr)

plot(res.mhr)

coef(res.mhr)

coef(res.mhr)[1]

coef(res.mhr)[2]

# confidence intervals
confint(res.mhr)

fitted(res.mhr)

# RSS
deviance(res.mhr)

predict(res.mhr, data.frame(age=c(20, 40)))

# ANOVA
anova(res.mhr)

# task 01
head(Cars93)

model = lm(MPG.highway ~ Horsepower, data = Cars93 )
model
predict(model, data.frame(Horsepower = 225))

model02 = lm(MPG.highway ~ Horsepower + Weight  , data = Cars93 )
model02
predict(model02, data.frame(Horsepower = 225, Weight = 5405))

# task 02
height_2yr = c(39,30,32,34,35,36,36,30)

height_adult = c(71,63,63,67,68,68,70,64)

model03 = lm(height_adult ~ height_2yr)
model03

predict(model03, data.frame(height_2yr = 33))

summary(model03)
