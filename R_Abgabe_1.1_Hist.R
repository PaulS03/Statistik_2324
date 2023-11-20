Entfernung <- read.csv("Aufgabe1.csv")
Ex <- sort(Entfernung$x)

#a)
a <- sum(Ex>00 & Ex<=05);a
b <- sum(Ex>05 & Ex<=10);b
c <- sum(Ex>10 & Ex<=20);c
d <- sum(Ex>20 & Ex<=40);d
e <- sum(Ex>40 & Ex<=80);e

#b)
n <- length(Entfernung$x);n

a/n
b/n
c/n
d/n
e/n

SHa <- a/(n*05);SHa
SHb <- b/(n*05);SHb
SHc <- c/(n*10);SHc
SHd <- d/(n*20);SHd
SHe <- e/(n*40);SHe
