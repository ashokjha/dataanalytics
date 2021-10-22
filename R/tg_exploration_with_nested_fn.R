# Using nested function
data("ToothGrowth")
View(ToothGrowth)

install.packages("dplyr")

library(dplyr)
arrange(filter(ToothGrowth,dose == 0.5),len)

head(ToothGrowth)
ToothGrowth1 <-ToothGrowth
ToothGrowth1 %>%
  rename(lllen=len)
