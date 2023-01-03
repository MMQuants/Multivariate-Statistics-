install.packages('tidyverse')
library(tidyverse)

df=read_csv("https://reneshbedre.github.io/assets/posts/ancova/manova_data.csv")
df

df %>% 
  group_by(plant_var) %>%  
  summarise(n = n(), mean = mean(height), sd = sd(height))

df %>% 
  group_by(plant_var) %>%  
  summarise(n = n(), mean = mean(canopy_vol), sd = sd(canopy_vol))

install.packages('gridExtra')
library(gridExtra)
p1 <- ggplot(df, aes(x = plant_var, y = height, fill = plant_var)) + geom_boxplot(outlier.shape = NA) + geom_jitter(width = 0.2) + theme(legend.position="top")
p2 <- ggplot(df, aes(x = plant_var, y = canopy_vol, fill = plant_var)) + geom_boxplot(outlier.shape = NA) + geom_jitter(width = 0.2) + theme(legend.position="top")
grid.arrange(p1, p2, ncol=2)
