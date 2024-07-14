## ---- myrcode6.1.1
c <- 1-pbinom(1:10, size = 5000000, prob = 1/4000000);c
c2 <- subset(c, c < 0.01); c2[1]
## ---- myrcode6.2.1
DAX <- read.csv("DAX89-24.csv")$x*100

dayFallingBelow_5 <- which(DAX <= -5)

dayNext <- DAX[dayFallingBelow_5 + 1]
## ---- myrcode6.2.2
T <- (mean(dayNext)-0)/(sd(dayNext)/sqrt(length(dayNext)));T
## ---- myrcode6.2.3
qt(1-0.05/2, length(dayNext)-1)
## ---- myrcode6.2.4
pt(-T,length(dayNext)-1)+1-pt(T,length(dayNext)-1)
## ---- myrcode6.3.1
Roulette <- read.csv("RouletteDaten.csv")$x

absFrequency <- table(Roulette)

n <- length(Roulette)
k <- length(absFrequency)

chisq <- sum((table(Roulette)-(n/37))^2 / (n/37));chisq
## ---- myrcode6.3.2
qchisq(1-0.05,k-1)
## ---- myrcode6.3.3
1-pchisq(chisq,k-1) #p wert

## ---- myrcode6.4.1
dat <- read.csv("Gehaelter.csv")

mG <- dat$Gehalt[dat$Geschlecht == "maennlich"]
wG <- dat$Gehalt[dat$Geschlecht == "weiblich"]

n_mG <- length(mG)
n_wG <- length(wG)

mean_mG <- mean(mG)
mean_wG <- mean(wG)

var_mG <- sd(mG)
var_wG <- sd(wG)

z <- (mean_mG-mean_wG) / sqrt((var_mG^2/n_mG)+(var_wG^2/n_wG));z
## ---- myrcode6.4.2
qnorm(1-0.01)
## ---- myrcode6.4.3
1-pnorm(z)