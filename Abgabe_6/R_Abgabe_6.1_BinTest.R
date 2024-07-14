x <- 0:50
y <- dbinom(x, size = 5000000, prob = 1/4000000)
plot(x,y,type="h",lwd=2,xlab="x",ylab="f(x)=P(X=x)",cex.lab=1.5,
     main="",cex.main=1.5,ylim=c(0,0.6),bty="n")

1-pbinom(1:10, size = 5000000, prob = 1/4000000)
