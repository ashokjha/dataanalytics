library(ggplot2)
library(palmerpenguins)


ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype=species)) + 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))
colnames(diamonds)
ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut))

ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, colour=cut))

ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, fill=cut))

ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, fill=clarity))


#Aesthetics and facets

ggplot(data = penguins,aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(aes(color = species)) +
  facet_wrap(~species)

ggplot(data = penguins) + 
  geom_point(aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  facet_wrap(~species)

ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=color, fill=cut)) +
  facet_wrap(~cut)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  facet_grid(sex~species)

