install.packages('tidyverse')
library(tidyverse)

# reading data
df=read_csv("https://reneshbedre.github.io/assets/posts/ancova/manova_data.csv")
df

# grouping by 'plant_var'
df %>% 
  group_by(plant_var) %>%  
  summarise(n = n(), mean = mean(height), sd = sd(height))

df %>% 
  group_by(plant_var) %>%  
  summarise(n = n(), mean = mean(canopy_vol), sd = sd(canopy_vol))

# plotting
install.packages('gridExtra')
library(gridExtra)
p1 <- ggplot(df, aes(x = plant_var, y = height, fill = plant_var)) + geom_boxplot(outlier.shape = NA) + geom_jitter(width = 0.2) + theme(legend.position="top")
p2 <- ggplot(df, aes(x = plant_var, y = canopy_vol, fill = plant_var)) + geom_boxplot(outlier.shape = NA) + geom_jitter(width = 0.2) + theme(legend.position="top")
grid.arrange(p1, p2, ncol=2)

# perform one-way MANOVA
dep_vars <- cbind(df$height, df$canopy_vol)
fit <- manova(dep_vars ~ plant_var, data = df)
summary(fit)

# get effect size
install.packages('effectsize')
library(effectsize)
effectsize::eta_squared(fit)

library(MASS)
post_hoc <- lda(df$plant_var ~ dep_vars, CV=F)
post_hoc

lda(df$plant_var ~ dep_vars, CV = F)
