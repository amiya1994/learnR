# Variable Assignment
x <- 1
y <- 1:10
z <- c(1,2,3)
a <- b <- 5:10
c <- seq(5,50, by = 5)

#Case Sensitive
A <- a

#List all values in workspace
ls()

#Remove variables from workspace
rm(A)
remove(A)

#Remove all variables
rm(list = ls())

#Open URL
browseURL("https://cran.r-project.org/web/views/")

#Install packages
install.packages("LiblineaR")

#List of all packages installed
library()

#List of loaded packages
search()

#Load a package that is installed
require("LiblineaR")

#Unload a package
detach("package:LiblineaR", unload = TRUE)

#Remove installed packages
remove.packages("LiblineaR")

# Help or documentation of a standard package
? utils

# Dataset from dataset package
data()

#Iris dataset
? iris

#Structure of dataset
str(iris)

#Load Iris dataset
data(iris)

# Import data from txt
Product <- read.table(file.path(getwd(), "data/Product.txt"), header= TRUE, sep = "\t")
str(Product)

# Import data from csv
Customer <- read.csv(file.path(getwd(), "data/Customer.csv"), header= TRUE)
str(Customer)
# To see all the observations
View(Customer)

# Frequency distribution
custData <- table(Customer$Region)

# Bar plot
# ========

# +ve for ascending, -ve for descending
barplot(custData)
barplot(custData[order(custData)])
barplot(custData[order(-custData)])

# Horizontal Bar plot
barplot(custData[order(custData)], horiz = TRUE)

# Change colors
barplot(custData[order(custData)],
        horiz = TRUE, col = c("red", "green", "blue", "beige"))

# Remove border
barplot(custData[order(custData)],
        horiz = TRUE, col = c("red", "green", "blue", "beige"),
        border = NA)

# Add title
barplot(custData[order(custData)],
        horiz = TRUE, col = c("red", "green", "blue", "beige"),
        border = NA,
        main = "Freq of Regions")

# Add Labels
barplot(custData[order(custData)],
        horiz = TRUE, col = c("red", "green", "blue", "beige"),
        border = NA,
        main = "Freq of Regions",
        xlab = "Number of Customers")

# Histogram
# =========

hist(Customer$Age)

#change bin size
hist(Customer$Age, breaks = 5)






