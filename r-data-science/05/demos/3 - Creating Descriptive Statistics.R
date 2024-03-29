# Creating Descriptive Statistics

# Set the working directory
setwd("~/Projects/R/Pluralsight Files/r-data-science/05/demos")

# Read a CSV data file
cars <- read.csv("Cars.csv")

# Peek at the data
head(cars)

# Create a frequency table
table(cars$Transmission)

# Get the minimum value
min(cars$Fuel.Economy)

# Get the maximum value
max(cars$Fuel.Economy)

# Get the average value
mean(cars$Fuel.Economy)

# Get the median value
median(cars$Fuel.Economy)

# Get the quartiles
quantile(cars$Fuel.Economy)

# Get the standard deviation
sd(cars$Fuel.Economy)

# Get the total value
sum(cars$Fuel.Economy)

# Get the correlation coefficient
cor(
    x = cars$Cylinders,
    y = cars$Fuel.Economy)

# Summarize an entire table
summary(cars)
