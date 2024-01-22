dbinom(894,935,0.95)


pbinom(894,927,0.95) # 927

max <- 894
sold <- 932
price <- 90
compensation <- 1000

total <- numeric(1000000)

for (i in 1:1000000) {
  attended <- rbinom(1,sold,0.95)

  if (attended <= max) {
    profit <- sold * price
  } else {
    profit <- sold * price - (attended-max) * compensation
  }

  total[i] <- profit
}

mean(total)
