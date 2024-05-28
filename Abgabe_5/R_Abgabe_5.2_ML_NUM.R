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

tH2 <- 1/(mean(gewicht^5)^(1/5)); tH2
minL <- min(logL2_theta2)
maxL <- max(logL2_theta2)

plot(theta2,logL2_theta2,type="l",xlab=expression(theta),
     ylab=expression(logL(theta)),bty="n", ylim = c(minL,maxL+100))
segments(x0=tH2,y0=minL,x1=tH2,y1=logL2(tH2),col="red",lty="dotted")
segments(x0=min(theta2),y0=logL2(tH2),x1=tH2,y1=logL2(tH2),col="red",lty="dotted")

###################################

Theta <- rep(NA,5); Theta[1] <- 0.0002 # Startwert für die Suche
for (i in 2:6){
  loglike1 <- 5*n2/Theta[i-1]-5*(Theta[i-1])^4*sum(gewicht^5) # 1. Ableitung
  loglike2 <- -5*n2/(Theta[i-1])^2-20*(Theta[i-1])^3*sum(gewicht^5) # 2. Ableitung
  Theta[i]<-Theta[i-1]-loglike1/loglike2
}

Theta[6]

Theta[6] == tH2
all.equal(Theta[6], tH2)

hist(gewicht, breaks = 20, probability = TRUE, main = "Histogramm der Tauchdauern",
     xlab = "Dauer (Sekunden)", ylab = "fedwsloigks")
# Dichtefunktion angepasst
curve((5*tH2^5 * x^4 * exp(-(tH2*x)^5)), col = "red", lwd = 2, add = TRUE)
