## ---- myrcode1.1.1
Entfernung <- read.csv("Aufgabe1.csv")
Ex <- sort(Entfernung$x)

#a)
a <- sum(Ex>00 & Ex<=05);a
b <- sum(Ex>05 & Ex<=10);b
c <- sum(Ex>10 & Ex<=20);c
d <- sum(Ex>20 & Ex<=40);d
e <- sum(Ex>40 & Ex<=80);e

## ---- myrcode1.1.2
#b)
n <- length(Entfernung$x);n

a/n
b/n
c/n
d/n
e/n

## ---- myrcode1.1.3
SHa <- a/(n*05);SHa
SHb <- b/(n*05);SHb
SHc <- c/(n*10);SHc
SHd <- d/(n*20);SHd
SHe <- e/(n*40);SHe

## ---- myrcode1.2.1
Tore <- read.csv("../Aufgabe2.csv")
Tx <- sort(Tore$x)

#a)
freq <- table(Tx)

max_freq <- names(freq)[which.max(freq)]
cat("Die Toranzahl",max_freq, "kommt am häufigsten vor.")

## ---- myrcode1.2.2
#b)
mean(Tx)

median(Tx)

## ---- myrcode1.2.3
#c)
korVar <- var(Tx) * (length(Tx)-1) / length(Tx)
korVar

## ---- myrcode1.2.4
#d)
a <- 0.9
if (((length(Tx)*a) %% 1) != 0) { #case n*a is not integer
  l_1 <- Tx[ceiling(length(Tx)*a)]
  cat(l_1 ,"Tore") #6 at index 276
} else { #case n*a is integer
  l_2 <- (Tx[length(Tx)*a] + (Tx[(length(Tx)*a)+1])) / 2
  cat(l_2 ,"Tore")
}

## ---- myrcode1.3.1
data <- read.csv("../mtcars.csv")

head(data)

x <- data$hp
y <- data$mpg

cor(x,y) #mpg to hp
## ---- myrcode1.3.2
plot(x,y,
     main="Korrelation Verbrauch und Pferdestärke bei US Oldtimern",
     xlab="Pferdestärke (in hp)",
     ylab="Verbrauch (in mpg)",
     pch=19)



