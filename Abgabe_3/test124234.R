max <- 894
sold <- 920
price <- 90
compensation <- 1000


  attended <- rbinom(1,sold,0.95)

  if (attended <= max) {
    profit <- sold * price
  } else {
    profit <- sold * price - (attended-max) * compensation
  }


