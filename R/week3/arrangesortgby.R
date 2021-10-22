install.packages("palmerpenguins")
library(palmerpenguins)
data("penguins")
library(tidyverse)
penguins %>%
  arrange(bill_length_mm) %>%
  arrange(-bill_length_mm)
penguins2 <-  penguins %>% arrange(-bill_length_mm)

View(penguins2)

penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(mean_bill_length_mm=mean(bill_length_mm)) 

penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(max_bill_length_mm=max(bill_length_mm)) 
# Cleaning, arraange, sort
penguins %>% 
  group_by(species,island) %>% 
  drop_na() %>% 
  summarise(max_bl=max(bill_length_mm),mean_bl=mean(bill_length_mm)) 

#filter
penguins %>% filter(species == "Adelie")

penguins %>% arrange(bill_length_mm)


penguins %>% 
  drop_na() %>% 
  group_by(species) %>%
  summarise(mean(body_mass_g))

str(penguins)
