x<-c(1,3,4,7,8,10) # mögliche Ausgänge
p<-c(0.2,0.3,0.1,0.1,0.1,0.2) # W'keiten der Ausgänge, erhalten durch Abzählung der Fälle
plot(x,p,type="h",ylim=c(0,0.35),ylab="P(X=x)",bty="n")

sum(x*p)

sum((x-5)^2*p)

n <- 10^6

X <- sample(x,size=n,prob = p, replace = TRUE)

mean(X)
var(X)


plot(x,cumsum(p),type="s",lwd=2,bty="n",ylab="F(x)")
abline(h=0.5,col=2,lty=2,lwd=2)