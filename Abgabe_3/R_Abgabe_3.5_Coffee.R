curve(dexp(x,0.016),0,200,lwd=2,bty="l",ylim=c(0,0.018),xlab = "Wartezeit in s", ylab = "Dichte")

abline(v=seq(-1.5,200,by=10),col="lightgrey")
abline(h=seq(0,0.03,by=0.001),col="lightgrey")
abline(v=c(0,50))



k <- function(x){
  kx <- 0.016*exp(-0.016*x)
  return(kx)
}

integrate(k,0,50)$value

pexp(50,0.016)