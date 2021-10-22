
install.packages("ggplot2") 
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)


ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))


ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,colour=species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, size = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,shape = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,colour=species, shape = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g,colour=species, 
                           shape = species, 
                           size = species))

#alpha for dense plot
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,alpha = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g,
                           shape = species, 
                           size = species),colour="green")
             