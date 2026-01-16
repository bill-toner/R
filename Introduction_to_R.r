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
a <- c (1, 2, 3, 4)
b <- c("red", "white", "blue")
c <- c(T, F, T)
is.numeric(5)
is.logical(c(T, F))
# coercion
x <- NA
x == NA
is.na(x)
as.numeric("42")
as.character(TRUE)
as.logical(1)
as.logical(54)

# Indexing Vectors ---- (R is 1-indexed, not 0)
x <- c(0, 1, 1, 2)
x[2]
x[1:2]
x[c(1, 4)]
x[-1]
x[c(-1, -4)]

logical_index = c(F, T, F, T)
x[logical_index]
x[x > 0]
x > 0
which(x > 0)

x <- c(0, 1, 1, 2)
x[(x > 0) & (x %% 2 == 1)]

# Functions on Vectors ----
2 * x
x <- c(0, 1, 1, 2)
y <- c(9, 6, 7, 3)
x + y
x > y
x <- c(0, 1)
y <- 3 : 8
x + y

x <- c(0, 1, 1, 2)
length(x)
max(x)
min(x)
sum(x)
prod(x)

v <- c(1, 2, 3, 4, NA, 6)
sum(v)
sum(v, na.rm = T)
x <- c(0, 1, 1, 2)
any(x > 0)
all(x > 0)

# Modifying Vectors ----
z <- c("white", "yellow", "red")
z[2] <- "green"
z
z <- c("white", "yellow", "red")
z[-2] = "green"
z

z <- c("white", "yellow", "red")
z[4] <- "teal"
z

z <- c("white", "yellow", "red")
z[6] <- "lime"
z

z[4:5] <- "magenta" # or z[4:5] <- c("magenta", "magenta")
z

# Matrices and arrays ----
v <- 1:6
m <- matrix(v, nrow = 2, ncol = 3)
m

m <- matrix(v, nrow = 2, ncol = 3, byrow = T)
m

v1 <- c(1, 3, 5)
v2 <- c(2, 4, 6)
rbind(v1, v2)
cbind(v1, v2)

(m <- rbind(v1, v2))
m["v2", ]

m
m[2, 3]
m[1, ]
m[1:2, 2:3]
m[1:2, c(1, 3)]
m[m > 1]
 
rownames(m)
colnames(m)
colnames(m) <- c("a", "b", "c")
m

ncol(m)
nrow(m)
dim(m)

m <- rbind(1:2, 2:3)
m
n <- rbind(c(2, 2, 2), c(1, 1, 1))
n
m %*% n

a <- array(1:24, c(2, 3, 4))
a


# Lists ----
title <- "OP list"
a <- c(12, 23, 5, 0, 9)
b <- matrix(1:10, nrow = 5)
c <- c("Some text", "Some more text")
l <- list(title = title, numbers = a, b, c)
l[[4]]
l$numbers

# Data Frames ----
data(iris)
head(iris)
head(iris, n = 3)
iris[,1]
iris$Sepal.Length
str(iris)
names(iris)
names(iris)[1:4] <- c("SLength", "SWidth", "PLength", "PWidth")
head(iris)
teamID <- c(1, 2, 3, 4, 5)
teamName <- c("Greece", "Romania", "Portugal", "Brazil", "England")
fifaRanking <- c(15, 29, 14, 11, 10)
qualified <- c(T, F, T, T, T)
worldCup2014 <- data.frame(teamID, teamName, fifaRanking, qualified, stringsAsFactors = FALSE)
worldCup2014
newWorldCup2014 <- worldCup2014[order(worldCup2014$fifaRanking, worldCup2014$teamName), ]
newWorldCup2014
worldCup2014[6,] <- c(6, "Belgium", 12, T)
worldCup2014 <- rbind(worldCup2014, c(7, "Scotland", 22, F))
worldCup2014
worldCup2014$wonWCBefore <- c(F, F, F, T, NA, F, F)
worldCup2014
worldCup2014[complete.cases(worldCup2014), ]
fix(worldCup2014)
worldCup2014[worldCup2014$teamName == "England", "wonWCBefore"] = T
worldCup2014
data(iris)
iris$Species <- NULL
head(iris)
iris <- iris[-7,]
iris
data(iris)
subset(iris, Sepal.Length > (2.5 * Sepal.Width), 
  select = c("Sepal.Length", "Sepal.Width", "Species"))

# Sampling data frames
v <- 1:100
sample(v, 5)
sample(v, 10, replace = T)
 
data(iris)
iris_size <- nrow(iris)
train_size <- ceiling(iris_size * 0.85)
iris_sampling_vector <- sample(seq_len(train_size), size = train_size)
iris_training <- iris[iris_sampling_vector, ]
iris_test <- iris[-iris_sampling_vector, ]
nrow(iris_training)
nrow(iris_test)

# Factors ----
