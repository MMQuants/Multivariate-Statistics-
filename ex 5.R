library(UsingR)

x<-matrix(1)
x<-edit(x)

seatbelts= cbind(c(56,2), c(8,16))
seatbelts

dimnames(seatbelts)<-list(parent = c("s kolan", "bez kolan"), child = c("s kolan", "bez kolan"))
seatbelts

headtail(grades)

table(grades$prev, grades$grade)
