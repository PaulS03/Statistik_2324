library(rootSolve)
f <- function(x){
  fx <- ifelse(abs(x)>1,0,15/16*(1-2*x^2+x^4))
  return(fx)
}

curve(f(x),-1.5,1.5,lwd=2,bty="l")

abline(v=seq(-1.5,1.5,by=0.1),col="lightgrey")
abline(h=seq(0,1,by=0.1),col="lightgrey")
abline(v=c(0,0.4))

integrate(f,0,1)$value
################################################################
F <- function(x){
  Fx <- ifelse(x< -1,0,ifelse(x>1,1,15/16*(x-2/3*x^3+1/5*x^5+8/15)))
  return(Fx)
}

curve(F(x),-1.5,1.5,lwd=2,bty="n")

F(0)
F(0.22029)
F(10)
F(9)
1-F(0.4)
F(0.4)-F(0)

roots <- uniroot.all(F, c(0.7,0.7))