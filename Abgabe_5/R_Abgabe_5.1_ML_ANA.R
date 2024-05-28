dauer <- read.csv("kegelrobbe.csv")$x

hist(dauer, breaks = 20)

logL <- function(theta){600*log(theta)-100*log(120)+5*sum(dauer)-theta*sum(dauer)}

theta <- seq(0.005,0.09,length=100)
logL_theta <- rep(NA,100)
for (k in 1:100){
  logL_theta[k] <- logL(theta[k])
}

plot(theta,logL_theta,type="l",xlab=expression(theta),
     ylab=expression(log(L(theta))),bty="n", ylim = c(70000,70800))
abline(v=6/mean(dauer), col="red", lty="dotted")
abline(h=logL(6/mean(dauer)), col="red", lty="dotted")

600/(100*mean(dauer))

6/mean(dauer)

logL(6/mean(dauer))

hist(dauer,breaks=20,col="lightgrey",main="",xlab="Unterwasserzeit",
     ylab = "rel. Haeufigkeit/Klassenbreite",prob=TRUE)
curve(dexp(x,0.04067686),from=0,to=400,col=2,lwd=2,add=TRUE)

n <- length(dauer)
sum_dauer <- sum(dauer)
hat_theta <- 6 * n / sum_dauer
hat_theta

# Histogramm und Dichtefunktion plotten
hist(dauer, breaks = 20, probability = TRUE, main = "Histogramm der Tauchdauern", xlab = "Dauer (Sekunden)")

# Anpassung der Dichtefunktion
curve(hat_theta^6 * x^5 / 120 * exp(-hat_theta * x), col = "red", lwd = 2, add = TRUE)