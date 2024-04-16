x <- read.csv("tut11_2022.csv")

table(x$Groesse) #es gibt 4 Häufungsgpunkte: 175,180,183,11

curve(dnorm(x,),col=2,lwd=2,add=TRUE)