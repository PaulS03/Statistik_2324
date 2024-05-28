## ---- myrcode5.1.1
dauer <- read.csv("kegelrobbe.csv")$x
n <- length(dauer)
sum_dauer <- sum(dauer)

#Log-Likelihood Funktion
logL <- function(theta){6*n*log(theta)-n*log(120)+5*sum_dauer-theta*sum_dauer}

theta <- seq(0.005,0.09,length=100) # x Werte liste
logL_theta <- rep(NA,100)           # y Werte liste "leer"
for (k in 1:100){
  logL_theta[k] <- logL(theta[k]) #rechnet y Werte aus
}

## ---- myrcode5.1.2
tH <- 6/mean(dauer); tH #mgl auch 6*n/sum(dauer)

plot(theta,logL_theta,type="l",xlab=expression(theta),
     ylab=expression(logL(theta)),bty="n", ylim = c(70500,70800))
segments(x0=tH,y0=70500,x1=tH,y1=logL(tH),col="red",lty="dotted")
segments(x0=min(theta),y0=logL(tH),x1=tH,y1=logL(tH),col="red",lty="dotted")

## ---- myrcode5.1.3
hist(dauer, breaks = 20, probability = TRUE, main = "Histogramm der Tauchdauern",
     xlab = "Dauer (Sekunden)", ylab = "Dichte")
# Dichtefunktion angepasst
curve((tH^6 * x^5 / 120) * exp(-tH * x), col = "red", lwd = 2, add = TRUE)

## ---- myrcode5.2.1
gewicht <- read.csv("gewicht.csv")$x
n2 <- length(gewicht)
sum_gewicht <- sum(gewicht)

#Log-Likelihood Funktion
logL2 <- function(theta2){n2*log(5) + 5*n2*log(theta2) +
  4*sum(log(gewicht))-(theta2^5)*sum((gewicht)^5)}

theta2 <- seq(0.0002,0.0004,length=439)
logL2_theta2 <- rep(NA,439)
for (l in 1:439){
  logL2_theta2[l] <- logL2(theta2[l])
}

## ---- myrcode5.2.2
tH2 <- 1/(mean(gewicht^5)^(1/5)); tH2 #mgl auch(n2 / sum(gewicht^5))^(1/5)
minL <- min(logL2_theta2)
maxL <- max(logL2_theta2)

plot(theta2,logL2_theta2,type="l",xlab=expression(theta),
     ylab=expression(logL(theta)),bty="n", ylim = c(minL,maxL+100))
segments(x0=tH2,y0=minL,x1=tH2,y1=logL2(tH2),col="red",lty="dotted")
segments(x0=min(theta2),y0=logL2(tH2),x1=tH2,y1=logL2(tH2),col="red",lty="dotted")

## ---- myrcode5.2.3
Theta <- rep(NA,5); Theta[1] <- 0.0002 # Startwert für die Suche
for (i in 2:6){
  loglike1 <- 5*n2/Theta[i-1]-5*(Theta[i-1])^4*sum(gewicht^5) # 1. Ableitung
  loglike2 <- -5*n2/(Theta[i-1])^2-20*(Theta[i-1])^3*sum(gewicht^5) # 2. Ableitung
  Theta[i]<-Theta[i-1]-loglike1/loglike2
}

Theta

all.equal(Theta[6], tH2)

## ---- myrcode5.2.4
hist(gewicht, breaks = 20, probability = TRUE, main = "Histogramm der Gewichte",
     xlab = "Gewicht (Gramm)", ylab = "Dichte")
# Dichtefunktion angepasst
curve((5*tH2^5 * x^4 * exp(-(tH2*x)^5)), col = "red", lwd = 2, add = TRUE)

## ---- myrcode5.3.1
library(ggplot2)
airbnb <- read.csv("airbnb.csv"); attach(airbnb)

ggplot(airbnb, aes(x = Distanz, y = Preis)) + geom_point() +
  scale_x_continuous(breaks = seq(0.5, 9.5, by = 1), limits = c(0.5, 10)) +
  scale_y_continuous(breaks = seq(15, 140, by = 15), limits = c(15, 140))

## ---- myrcode5.3.2
modell <- lm(Preis~Distanz)$coeff; modell
b_0 <- as.numeric(modell[1])
b_1 <- as.numeric(modell[2])

## ---- myrcode5.3.3
priceChange <- b_1 * 3
priceChange

## ---- myrcode5.3.4
ggplot(airbnb, aes(x = Distanz, y = Preis)) + geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(x = "Distanz zum Stadtzentrum (Km)", y = "Preis (Euro)") +
  scale_x_continuous(breaks = seq(0.5, 9.5, by = 1), limits = c(0.5, 10)) +
  scale_y_continuous(breaks = seq(15, 140, by = 15), limits = c(15, 140))

## ---- myrcode5.3.5
price <- 60
dist_60 <- (price-b_0)/b_1
dist_60
