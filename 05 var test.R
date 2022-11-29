install.packages("UsingR")
library(UsingR)
head(ToothGrowth)

# bartlett
# compare more than 2 samples's variance
bartlett.test(len~supp, dat=ToothGrowth)

# compare the dose samples's variance (3 types)
bartlett.test(len~supp, dat=ToothGrowth)

install.packages("car")
library(car)

leveneTest(len~supp, dat=ToothGrowth)


leveneTest(len~as.factor(dose), dat=ToothGrowth)

bartlett.test(len~as.factor(dose), dat=ToothGrowth)

# comparing only 2 samples' variance
var.test(len~supp, dat=ToothGrowth)

# cannot compare 3 samples' variance
var.test(len~as.factor(dose), dat=ToothGrowth)
