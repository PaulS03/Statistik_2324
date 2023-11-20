Abis <- read.csv("tut3.csv")
Abis$x

#a)

sorted <- sort(Abis$x)

plot(ecdf(sorted))
axis(side = 1,
     seq(1.0,4.0,by=0.5))

c <- sum(sorted < 1.8)
c / length(sorted)
