install.packages('tidyverse')
library(tidyverse)

df=read_csv("https://reneshbedre.github.io/assets/posts/ancova/manova_data.csv")
df

df %>% 
  group_by(plant_var) %>%  
  summarise(n = n(), mean = mean(height), sd = sd(height))
