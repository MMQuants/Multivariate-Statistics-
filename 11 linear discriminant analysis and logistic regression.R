wines=read.table("C:/Users/grade/Desktop/wine.data",
                 sep=',')

wines

colors <- c("green", "red" ,"blue")[wines[ , 1]]
colors

newwine <- cbind( jitter(as.integer(wines[ , 1])), 	wines[ , -1])
newwine

names(newwine)[1] <- names(wines)[1] 
names(newwine)[1] <- names(wines)[1] 
head(newwine)

pairs(newwine, pch = 16, cex = .3, gap = 0, col = colors, xaxt = "n", yaxt = "n")
