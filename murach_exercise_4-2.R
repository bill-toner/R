library(tidyverse)
library(datasets)

swchars <- as_tibble(starwars)
swchars

# count of characters by species
ggplot(swchars, aes(x = species, fill = species)) +
  geom_bar()

# count of characters by gender
ggplot(swchars, aes(x = gender, fill = gender)) +
  geom_bar()

# scatter plot of mass by height
ggplot(swchars, (aes(x = height, y = mass, color = species))) + 
  geom_point(size = 3)

# scatter plot of mass by height, removing outlier
ggplot(filter(swchars, mass < 1000), (aes(x = height, y = mass, color = gender))) + 
  geom_point(size = 5)

# scatter plots of mass by height, removing outlier, subplots for gender
ggplot(filter(swchars, mass < 1000), (aes(x = height, y = mass, color = species))) + 
  geom_point(size = 5) + 
  facet_wrap(facets = vars(gender), nrow = 3)


