print("Hello R")
71 - 54
37.2 * 1.02
6 / 7
2 ^ 4
13 %/% 2
13 %% 2
ceiling(7.8)
floor(2.32)
round(1.234, 2)
floor(2.32)
round(1.234, 2)
signif(1.234, 2)
choose(5, 2)
factorial(4)
choose(5, 2) * factorial(2)
toupper("Hello World")
tolower("Hello World")
substr("Hello World", 1, 5)
nchar("Hello World")
paste("Hello", "World", sep = " ")

# Variables ----
x <- 2
x
ls()
rm(x)
rm(list = ls())
save.image("myWorkspace.R")
getwd()
setwd("C:/Users/toner/R")

# Primative Types ----
false_value <- F
typeof(false_value)

# Functions ----
(my_range <- 2 : 5)
seq(from = 2, to = 5)
seq(2, 5)
seq(2, 5, by = 0.5)
help(t.test)
?t.test

# Vectors ----