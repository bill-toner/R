# IE 575 Lesson Three

library(readxl)
Customers <- read_excel("C:\\Users\\toner\\Downloads\\TeleCustomers Spreadsheet.xlsx")
head(Customers)
plot(Customers$Age, 
     Customers$Est_Income, 
     main = 'Tele Customers Estimated Income by Age', 
     xlab = "Age", 
     ylab = "Estimated Income",
     col = Customers$RatePlan
    )
abline(lm(Customers$Est_Income ~ Customers$Age, data = Customers), col = 10)

data(iris)
head(iris)
plot(sort(iris$Sepal.Length), xlab = "data ID", ylab = "Sepal Length", type = "l")

hist(iris$Sepal.Length, xlab = "Sepal Length", main = "Distribution of Sepal Length",
   #  breaks = c(4, 4.5, 5, 5.5, 6, 6.5, 7, 7.5, 8)
   breaks = 20
)

dst <- density(iris$Sepal.Width)
plot(dst, xlab = "Sepal Width", main = "Distribution of Sepal Width")
polygon(dst, col = "red", border = "blue")

counts <- table(iris$Species)
barplot(counts, main = "Iris Species Distribution", xlab = "Species")


types <- aggregate(Sepal.Length ~ Species, data = iris, FUN = mean)
barplot(types$Sepal.Length, ylab = "Sepal Length", main = "Distribution of Sepal Mean Length")

barplot(types$Sepal.Length, xlab = "Sepal Length", main = "Distribution of Sepal Mean Length",
        horiz = TRUE, names.arg = c("setosa", "versicolor", "virginica"), col = c(4, 5, 6))

# ggplot examples
library(ggplot2)
        