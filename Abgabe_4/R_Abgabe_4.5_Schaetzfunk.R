mu <- 3
sigma_sq <- 4

curve(dnorm(x,mu,sigma_sq/2),from=-1,to=7,bty="n",ylim=c(0,0.45),ylab="Dichte")
curve(dnorm(x,mu,sigma_sq/3),from=-1,to=7,bty="n",col="red",add=TRUE)
curve(dnorm(x,59/60*mu,(713/3600)*sigma_sq),from=-1,to=7,bty="n",col="blue",add=TRUE) ####weil?

abline(v = mu, col="gray", linetype="dashed")