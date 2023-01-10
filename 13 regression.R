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


