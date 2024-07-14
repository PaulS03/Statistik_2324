Roulette <- read.csv("RouletteDaten.csv")$x

absFrequency <- table(Roulette)

n <- length(Roulette)
k <- length(absFrequency)

chisq <- sum((table(Roulette)-(n/37))^2 / (n/37));chisq

qchisq(1-0.05,k-1)

1-pchisq(chisq,k-1) #p wert

