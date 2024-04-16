
Wartezeit <- rep(NA,100000)

for (k in 1:100000){
  Wartezeit[k] <- sum(rgeom(15,0.1)+1)
}

hist(Wartezeit)

1 - pnorm(120,150,sqrt(1350))