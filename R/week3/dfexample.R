install.packages("tidyverse")
library(ggplot2)
data("diamonds")
View(diamonds)
head(diamonds)
str(diamonds)
colnames(diamonds)
library(tidyverse)

# vignette(mutate)

mutate(diamonds, carat2 = carat*100)

as_tibble(diamonds)
         

