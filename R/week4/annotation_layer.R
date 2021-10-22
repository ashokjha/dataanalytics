
install.packages("ggplot2") 
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)
data(penguins) 

# Labels
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,colour=species)) +
  labs(title = "Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of Three Penguin Species", 
       caption = "The palmer penguins data was collected from 2007 to 2009 by Dr.Kristen Gorman")

# Annotation

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,colour=species)) +
  labs(title = "Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of Three Penguin Species", 
       caption = "The palmer penguins data was collected from 2007 to 2009 by Dr.Kristen Gorman") +
  annotate("text", x=220, y= 3500, label = "The Gentoos are the largest", 
           color = "purple", fonface = "Bold", angle=25)

# We can assign steps in variable
stp <- ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,colour=species))
stp <- stp + labs(title = "Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of Three Penguin Species", 
                  caption = "The palmer penguins data was collected from 2007 to 2009 by Dr.Kristen Gorman")
stp + annotate("text", x=220, y= 3500, label = "The Gentoos are the largest", 
                color = "purple", fonface = "Bold", size = 4.5, angle = 25)





