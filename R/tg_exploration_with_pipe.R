# TG exploration with pipe
data("ToothGrowth")

filtered_tg <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  arrange(len)


View(filtered_tg)
