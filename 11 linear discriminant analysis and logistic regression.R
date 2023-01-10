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

wines %>% group_by(V1) %>%  summarise(n = n(), mean = mean(V2), sd = sd(V2))

x=wines %>% group_by(V1) %>%  summarise(n = n(), 
                                        mean2 = mean(V2),
                                        mean3=mean(V3), 
                                        mean4 = mean(V4),  
                                        mean5=mean(V5),
                                        mean6=mean(V6),
                                        mean7=mean(V7),
                                        mean8=mean(V8),
                                        mean9=mean(V9),
                                        mean10=mean(V10),
                                        mean11=mean(V11),
                                        mean12=mean(V12),
                                        mean13=mean(V13),
                                        mean14=mean(V14))

x


