Uniweg <- read.csv("http://www.rolandlangrock.com//Daten//Entfernungen.csv")$x
hist(Uniweg,breaks=seq(0,100,by=5),bor="white",prob=TRUE,
     xlab="Uniweg in km",ylab="rel. Haeufigkeit/Klassenbreite",main="")


curve(dexp(x,0.05),lwd=2,col=2,add=TRUE)
curve(dexp(x,0.1),lwd=2,col=2,add=TRUE)

pexp(20,0.05)
pexp(20,0.1)

1-pexp(50,0.05)
1-pexp(50,0.1)

pexp(30,0.05) - pexp(10,0.05)
pexp(30,0.1) - pexp(10,0.1)
