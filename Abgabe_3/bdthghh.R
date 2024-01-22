# Create a sequence of numbers from 850 to 950


# Apply the logic for the second column
#profit <- (numbers * 90 - (numbers - 894) * 1000)

# Create a data frame with the two columns
#my_data <- data.frame(First_Column = numbers, Second_Column = profit)

# Print the data frame
#print(my_data)

# Plotting the data

num <- 895:940
max <- 894
sold <- 932
price <- 90
compensation <- 1000

total <- numeric(100000)
tot <- numeric(46)

for (j in 895:940) {
  for (i in 1:100000) {
    attended <- rbinom(1,j,0.95)

    if (attended <= max) {
      profit <- j * price
    } else {
      profit <- j * price - (attended-max) * compensation
    }

    total[i] <- profit
  }
  tot[j] <- mean(total)
}

tot[-c(1:894)]

my_data <- data.frame(x = num, y = tot[-c(1:894)])

plot(my_data$x, my_data$y, type = "o", col = "blue", xlab = "Passangers", ylab = "Profit")


max(my_data$y)
