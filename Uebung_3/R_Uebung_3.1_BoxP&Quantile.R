dax <- read.csv("tut4.csv")

DAX <- sort(dax$Wert)

DAX
length(DAX)
quantile(DAX, probs = seq(0.25,0.75,0.25))

a <- 0.33
if (((length(DAX)*a) %% 1) != 0) { #case n*a is not integer
  d_1 <- DAX[ceiling(length(DAX)*a)]
  cat(d_1) #6 at index 276
} else { #case n*a is integer
  d_2 <- (DAX[length(DAX)*a] + (DAX[(length(DAX)*a)+1])) / 2
  cat(d_2)
}


boxplot(DAX, range=Inf)
