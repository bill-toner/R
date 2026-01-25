# Mean
my_mean <- function(my_vector) {
  total <- sum(my_vector)
  len <- length(my_vector)
  return(total / len)
}


# Variance
my_variance <- function(my_vector) { 
  sd_mean <- my_mean(my_vector)
  deviation <- 0
  sum_squares <- 0
  for (i in 1:length(my_vector)) {
    deviation <- (my_vector[i] - sd_mean)
    sum_squares <- (sum_squares + (deviation ^ 2))
  }
  return(sum_squares / (length(my_vector) - 1))
}


# Standard Deviation
my_standard_deviation <- function(my_vector) {
  return(sqrt(my_variance(my_vector)))
}




# Create a sample vector
data_vector <- c(12, 84, 5, 17, 18, 11, 13, 19, 69, 92, 15, 10, 55)

# Calculate the sample variance
var(data_vector)
my_variance(data_vector)

# 3. Load  TeleCustomers Spreadsheet.xlsx
# and use your own functions (created in question 2) to calculate the mean, variance, and standard deviation 
# for the “Estimated income” variable. The dataset contains the following fields describing the customers.

library(readxl)

tele_customers <- read_excel("C:\\Users\\toner\\Downloads\\TeleCustomers Spreadsheet.xlsx")

mean(tele_customers$Est_Income)
my_mean(tele_customers$Est_Income)

var(tele_customers$Est_Income)
my_variance(tele_customers$Est_Income)

sd(tele_customers$Est_Income)
my_standard_deviation(tele_customers$Est_Income)
