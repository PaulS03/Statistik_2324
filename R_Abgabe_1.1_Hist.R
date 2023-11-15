Entfernung <- read.csv("Aufgabe1.csv")

length(Entfernung$x) #185

#a)
a <- sum(Entfernung$x>00 & Entfernung$x<=05) #41
b <- sum(Entfernung$x>05 & Entfernung$x<=10) #31
c <- sum(Entfernung$x>10 & Entfernung$x<=20) #45
d <- sum(Entfernung$x>20 & Entfernung$x<=40) #42
e <- sum(Entfernung$x>40 & Entfernung$x<=80) #26

######################################
#b)
a/185 #0.222
b/185 #0.168
c/185 #0.243
d/185 #0.227
e/185 #0.140

SHa <- a/(185*05) #0.0443
SHb <- b/(185*05) #0.0335
SHc <- c/(185*10) #0.0243
SHd <- d/(185*20) #0.0114
SHe <- e/(185*40) #0.0035

hist(Entfernung$x, 
     breaks = c(0,5,10,20,40,80),
     prob=TRUE,               
     bor="white")

