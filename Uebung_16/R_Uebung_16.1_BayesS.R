mu <- 0.30 # von Ihnen zu wählen!
kappa <- 25 # von Ihnen zu wählen!
curve(dbeta(x,mu*kappa,kappa*(1-mu)),from=0,to=1,col=2,lwd=2,
      n=1000,xlab=expression(theta),ylim=c(0,5),ylab="Dichte der a-priori-Verteilung")
abline(v=mu, type = "dotted")

dbeta(1,mu*kappa,kappa*(1-mu))