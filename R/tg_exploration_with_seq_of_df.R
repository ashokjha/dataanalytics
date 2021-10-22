

data("ToothGrowth")
View(ToothGrowth)

# Using sequence of dataframe
filtered_tg <- filter(ToothGrowth,dose == 0.5)

View(filtered_tg)

arrange(filtered_tg,len,asc)
?arrange
