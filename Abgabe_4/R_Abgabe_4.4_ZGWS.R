pnorm(600,500,sqrt(12500))

pnorm(0,500,sqrt(12500))

pnorm(600,500,sqrt(12500))-pnorm(0,500,sqrt(12500))

curve(dgamma(x,25,1/20),xlab="Dauer der Bearbeitung",from=0,to=1000,bty="n",lwd=2,ylab="Dichte")
curve(dnorm(x,500,sqrt(12500)),col="red", from = 0,  to = 1000, add=TRUE)
legend(550,0.004,"approx. Normalvert. nach ZGWS",lwd=2,col=2,bty="n")
