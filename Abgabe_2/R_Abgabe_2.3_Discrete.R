x<-c(0,2,4,6,8,10,12) # mögliche Ausgänge
p<-c(0,0.2,0.3,0.1,0.1,0.1,0.2) # W'keiten der Ausgänge, erhalten durch Abzählung der Fälle
plot(x,p,type="h",ylim=c(0,0.35),ylab="P(X=x)",bty="n")

sum(x*p)

sum((x-6.4)^2*p)


plot(x,cumsum(p),type="s",lwd=2,bty="n",ylab="F(x)")
abline(h=0.5,col=2,lty=2,lwd=2)