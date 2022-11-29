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
