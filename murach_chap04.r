# Murach R Chapter 04
library(tidyverse)
library(datasets)

data()
head(ChickWeight)
irises <- as_tibble(iris)
irises

chicks <- as_tibble(ChickWeight)
chicks
chicks <- rename(chicks, Weight = weight)
names(chicks)

filter(chicks, Diet == 2)
filter(irises, Sepal.Length > 5)

ggplot(chicks, aes(x = Time, y = Weight, color = Chick))
ggplot(chicks, aes(x = Time, y = Weight, color = Chick)) + geom_line()
ggplot(irises, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3)

ggplot(irises, aes(x = Sepal.Length, y = Sepal.Width,
  color = Species, size = Sepal.Length * Sepal.Width)) +
  geom_point()

ggplot(irises, aes(x = Species, fill = Species)) +
  geom_bar()

ggplot(filter(irises, Sepal.Length > 5.5), aes(x = Species, fill = Species)) +
  geom_bar()