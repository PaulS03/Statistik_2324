#3a
a <- function(x){
  ax <- ifelse(abs(x)>2,0,3/8*(1-(x^2)/4))
  return(ax)
}

curve(a(x),-2.5,2.5,lwd=2,bty="l")
##########################################
#3b
F <- function(x){
  Fx <- ifelse(x< -2,0,ifelse(x>2,1,3/8*(x-(x^3)/12)))
  return(Fx)
}

curve(F(x),-3,3,lwd=2,bty="n")

##########################################
#3c
integrate(a,0,1)$value

A(1)
A(0)
##########################################
#4c

A(2)