dax <- read.csv("tut4.csv")

DAX <- sort(dax$Wert)

DAX

quantile(DAX, probs = seq(0.25,0.75,0.25))


boxplot(DAX)
