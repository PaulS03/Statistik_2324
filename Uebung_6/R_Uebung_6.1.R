a <- 4
Gewinn <- rep(NA,100000)
for (k in 1:100000){
  Wuerfe <- sample(1:6,size=3,replace=TRUE)
  Anzahl_a <- sum(Wuerfe==a)
  Gewinn[k] <- ifelse(Anzahl_a==0,-1,Anzahl_a)
}
sum(Gewinn) # insgesamt
sum(Gewinn)/100000 # im Mittel pro Spiel


options(scipen=999)
plot(cumsum(Gewinn)/(1:100000),type="l",bty="n",
     ylab="mittlerer Gewinn",xlab="Anzahl Durchlaeufe")
abline(h=-17/216,col=2,lty=2)
