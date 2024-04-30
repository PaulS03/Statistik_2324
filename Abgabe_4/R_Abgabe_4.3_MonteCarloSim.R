SP500 <- read.csv("SP500.csv")

sortedSP500 <- SP500[order(SP500$Rendite), ]

sortedSP500[1:2,]


## ---- myrcode4.2.2
hist(SP500$Rendite,breaks=50,col="lightgrey",main="SP500 Rendite",
     xlab="Taegliche Rendite", ylab="rel. Haeufigkeit",prob=TRUE,ylim=c(0,0.55))

mu <- mean(SP500$Rendite); sigma <- sd(SP500$Rendite)

curve(dnorm(x,mu,sigma),col=2,lwd=2,add=TRUE)


## ---- myrcode4.2.3
1-pnorm(1,mu,sigma)


## ---- myrcode4.2.4
pnorm(-2,mu,sigma)


## ---- myrcode4.2.5
current <- 5000
upperBound <- (5050/current-1)*100
lowerBound <- (4950/current-1)*100

pnorm(upperBound,mu,sigma)-pnorm(lowerBound,mu,sigma)


## ---- myrcode4.3.1
simDayReturn <- rnorm(1, mu, sigma); simDayReturn

newStockPrice <- 5000 * (1 + simDayReturn/100); newStockPrice


## ---- myrcode4.3.2
stockPrice <- numeric(250)
startPrice <- 5000
previousPrice <- startPrice

for (i in 1:250) {
  dayReturn <- rnorm(1,mu,sigma)
  currentPrice <- previousPrice * (1 + dayReturn/100) #calc price for today
  stockPrice[i] <- currentPrice #append to current list
  previousPrice <- currentPrice #update previousPrice (for new day)
}
head(stockPrice)

stockPrice[250]

## ---- myrcode4.3.3
endPrice_2 <- numeric(1000)

for (j in 1:1000) {
  stockPrice_2 <- numeric(250)
  startPrice_2 <- 5000
  previousPrice_2 <- startPrice_2
  for (i in 1:250) {
    dayReturn_2 <- rnorm(1,mu,sigma)
    currentPrice_2 <- previousPrice_2 * (1 + dayReturn_2/100) #calc price for today
    stockPrice_2[i] <- currentPrice_2 #append to current list
    previousPrice_2 <- currentPrice_2 #update previousPrice (for new day)
  }
  endPrice_2[j] <- stockPrice_2[250]
}
my_data <- data.frame(value = endPrice_2)

hist(my_data$value,breaks=100,col="lightgrey",main="a",xlab="a",ylab="a",
     prob=TRUE,ylim=c(0,0.0006))