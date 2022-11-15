library(boot)
require(boot)
cd4
head(cd4)
library(tools)
library(HSAUR2)
library(MVA)
bvbox(cd4)
ch = chull(cd4)
plot(cd4, pch=10, col =2)
lines(cd4$baseline[ch], cd4$oneyear[ch], type='l', col=3,lwd=2)
# za da gi svyrje vsichkite tochki
ch = c(ch, ch[1])
plot(cd4, pch=10, col =2)
lines(cd4$baseline[ch], cd4$oneyear[ch], type='l', col=3,lwd=2)

library(aplpack)
nlevels = 5
colors = heat.colors((9))[3: nlevels+2]
plothulls(cd4, n.hull = nlevels, col.hull=colors, hy.hull=1:nlevels, density = NA)
points(cd4, pch=16, col="blue")

data("iris")
head(iris)
pairs(iris)

bagplot.pairs(iris[,1:3], gap=0, col.baghull='green')

library(graphics)
coplot(Petal.Length~Sepal.Length|Sepal.Width, data = iris, pch = 16, col = "red", bar.bg = c(num="blue"))

coplot(Petal.Length~Sepal.Length|Species, data = iris, pch = 16, col = "red", bar.bg = c(num="blue"))

coplot(Petal.Length~Sepal.Length|Sepal.Width, data = iris, pch = 16, col = "red", bar.bg = c(num="blue"), fac=gray(0.95), rows=1)

pairs(iris, lwd=3, pch=16, cex=1.25, col="red",gap=0, xaxt="n", yaxt="n", panel=panel.smooth, col.smooth = "blue")
