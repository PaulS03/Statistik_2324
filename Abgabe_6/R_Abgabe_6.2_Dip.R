DAX <- read.csv("DAX89-24.csv")$x*100

dayFallingBelow_5 <- which(DAX <= -5)

dayNext <- DAX[dayFallingBelow_5 + 1]

T <- (mean(dayNext)-0)/(sd(dayNext)/sqrt(length(dayNext)))

qt(0.975, length(dayNext)-1)