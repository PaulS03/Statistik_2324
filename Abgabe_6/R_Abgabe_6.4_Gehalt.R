dat <- read.csv("Gehaelter.csv");dat

mG <- dat$Gehalt[dat$Geschlecht == "maennlich"]
wG <- dat$Gehalt[dat$Geschlecht == "weiblich"]

n_mG <- length(mG)
n_wG <- length(wG)

mean_mG <- mean(mG)
mean_wG <- mean(wG)

var_mG <- sd(mG)
var_wG <- sd(wG)

z <- (mean_mG-mean_wG) / sqrt((var_mG^2/n_mG)+(var_wG^2/n_wG))

qnorm(1-0.01)

1-pnorm(z)