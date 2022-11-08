setwd("~/Marchonio")
library(UsingR)

x<-matrix(1)
x<-edit(x)

seatbelts= cbind(c(56,2), c(8,16))
seatbelts

dimnames(seatbelts)<-list(parent = c("s kolan", "bez kolan"), child = c("s kolan", "bez kolan"))
seatbelts

headtail(grades)

table(grades$prev, grades$grade)

tbl <- table(grades)

headtail(Fingerprints)

idx<-!is.na(Fingerprints$count)

whorls <- rep(Fingerprints$Whorls[idx])
whorls

headtail(Fingerprints)
loops<- rep(Fingerprints$Loops[idx], Fingerprints$count[idx])

table(whorls, loops) 
whorls
loops


temp = xtabs(count~whorls+loops, Fingerprints)

xtabs(~Origin+Type, Cars93)

barplot(seatbelts, xlab="Parent", main="child seat usage", beside= TRUE, legend.text = c("s kolan", "bez kolan"))

barplot(t(seatbelts))

head(Titanic)

titanic = as.data.frame((Titanic))
head(titanic)

headtail(titanic)


titanic


xtabs(Freq~Survived+CLass, data = titanic, subset=Sex="Female")


tbl <- xtabs(Freq~Sex, titanic)
tbl
mosaicplot(tbl)

tbl2<-xtabs(Freq~Sex+Survived+Class, titanic)

mosaicplot(tbl2)
