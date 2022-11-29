install.packages("UsingR")
library(UsingR)
head(ToothGrowth)
bartlett.test(len~supp, dat=ToothGrowth)
