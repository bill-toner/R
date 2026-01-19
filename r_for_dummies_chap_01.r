x <- c(5, 10, 15, 20, 25, 30, 25, 40) # numerical vector
x

sum(x)
mean(x)
var(x)

y <- seq(5, 40, 5)
y

?seq

# writing functions
hypotenuse <- function(a, b) {
  hyp <- sqrt( a ^ 2 + b ^ 2)
  return(hyp) # explicit return for style, ignoring linter
}
hypotenuse(3, 4)

beatles <- c("john", "paul", "george", "ringo") # character vector
w <- c(T, F, F, T, T, F) # logical vector
beatles[2]
beatles[2:3]
beatles[c(2, 4)] # use a vector to select non-consecutive indices

quadrifecta <- c(7, 8, 4, 3)
repeated_quadrifecta <- rep(quadrifecta, 3)
repeated_quadrifecta

rep_vector <- c(1, 2, 3, 4)
# specifies the number of repetitions for each element
repeated_quadrifecta <- rep(quadrifecta, rep_vector) 
repeated_quadrifecta

xx <- c(3, 4, 5)
xx

xx <- append(xx, 6)
length(xx)

# Matrices ---- a matrix is a two-dimensional array of data elements of the same type

num_matrix <- seq(5, 100, 5)
dim(num_matrix) <- c(5, 4)
num_matrix
# transposing a matrix interchanges rows with columns, t() does this
t(num_matrix)

# matrix function
num_matrix <- matrix(seq(5, 100, 5), nrow = 5)
num_matrix

num_matrix <- matrix(seq(5, 100, 5), nrow = 5, byrow = T)
num_matrix

num_matrix[5, 4] # row number, column
num_matrix[3, ] # reference a whole row
num_matrix[, 2] # references a whole column

data(HairEyeColor)
head(HairEyeColor)
HairEyeColor
HairEyeColor[,,2]

# Lists ---- a collection of objects that aren't strictly the same type
beatles <- c("john", "paul", "george", "ringo")
ages <- c(17, 15, 14, 22)
beatles_info <- list(names = beatles, age_joined = ages)
beatles_info

beatles_info$names
beatles_info$names[4]
beatles_info$names[beatles_info$age_joined > 16]

# Data frames -- rows and columns of more than one data type
name <- c("al", "barbara", "charles", "donna", "ellen", "fred")
height <- c(72, 64, 73, 65, 66, 71)
weight <- c(195, 117, 205, 122, 125, 199)
gender <- c("M", "F", "M", "F", "F", "M")
factor_gender <- factor(gender)
factor_gender
d <- data.frame(name, factor_gender, height, weight)
d
d[3, 3]
d[5, ]
d$height
mean(d$height)
mean(d$height[d$factor_gender == "F"])
aptitude <- c(35, 20, 32, 22, 18, 15)
d.apt <- cbind(d, aptitude)
d.apt
d

# Conditional Statements ----
xx <- c(2, 3, 4, 5, 6)
yy <- NULL
for (i in 1:length(xx)) { 
    if(xx[i] %% 2 == 0) {
        yy[i] <- "EVEN"
    } else { 
        yy[i] <- "ODD"
    }
}
yy