## ---- myrcode3.1.1
1-pgeom(200-1,1/80)

## ---- myrcode3.1.2
mean(rgeom(1000,1/80)+1)

sum(rgeom(1000,1/80)+1 > 200)/1000


## ---- myrcode3.1.3
(log(0.2) / log(79/80))


## ---- myrcode3.1.4
pgeom(128-1,1/80)


## ---- myrcode3.2.1
pbinom(894,935,0.95)


## ---- myrcode3.2.2
pbinom(894,921,0.95)
pbinom(894,922,0.95)

## ---- myrcode3.2.3
max <- 894
sold <- 930
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
## ---- myrcode3.2.4
num <- 894:940
max <- 894
price <- 90
compensation <- 1000

total_in <- numeric(100000)
total_out <- numeric(47)

for (j in 894:940) { #erste Schleife verschiedene #Tickets
  for (i in 1:100000) { #innere Schleife nur 100000 fuer Vereinfachung
    attended <- rbinom(1,j,0.95)

    if (attended <= max) {
      profit <- j * price
    } else {
      profit <- j * price - (attended-max) * compensation
    }

    total_in[i] <- profit
  }
  total_out[j] <- mean(total_in) #speichert fuer 895:940 jeweil
                                 #den mean der jeweiligen profits
}

total_new <- total_out[-c(1:893)] #drop der ersten NA werte fuer total_out

my_data <- data.frame(x = num, y = total_new)

plot(my_data$x, my_data$y, type = "o", col = "blue",
     xlab = "Verkaufte Tickets", ylab = "Profit")
abline(v=932,col="red")

my_data[my_data$y == max(my_data$y),]

## ---- myrcode3.3.1
f <- function(x){
  fx <- ifelse(abs(x)>2,0,3/8*(1-(x^2)/4))
  return(fx)
}

curve(f(x),-3,3,lwd=2,bty="l")


## ---- myrcode3.3.2
F <- function(x){
  Fx <- ifelse(x< -2,0,ifelse(x>2,1,3/8*(x-(x^3)/12)+1/2))
  return(Fx)
}

curve(F(x),-2.5,2.5,lwd=2,bty="n")


## ---- myrcode3.3.3
integrate(f,0,1)$value


## ---- myrcode3.3.4
F(1)-F(0)


## ---- myrcode3.4.1
F(0.851437)


## ---- myrcode3.5.1
curve(dexp(x,0.016),0,200,lwd=2,bty="l",ylim=c(0,0.017)
  ,xlab = "Wartezeit in Sekunden", ylab = "Dichte")

abline(v=seq(0,200,by=10),col="lightgrey")
abline(h=seq(0,0.02,by=0.001),col="lightgrey")
abline(v=c(0,50),col="red")


## ---- myrcode3.5.2
k <- function(x){
  kx <- 0.016*exp(-0.016*x)
  return(kx)
}

integrate(k,0,50)$value


## ---- myrcode3.5.3
pexp(50,0.016)
