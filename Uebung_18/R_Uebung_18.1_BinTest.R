n <- 144
p <- 1/6

probabilities <- dbinom(0:50,n,p)

plot(0:50, probabilities, type = "h", lwd = 2, col = "blue",
     xlab = "Anzahl weisser Gummibaerchen", ylab = "Wahrscheinlichkeit",
     main = "Binomialverteilung der Teststatistik unter H_0")

# Signifikanzniveau
alpha <- 0.05

critical_value <- qbinom(alpha,n,p)

abline(v = critical_value, col = "red", lwd = 2, lty = 2)
text(critical_value, max(probabilities) * 0.5, labels = paste("k =", critical_value), pos = 2, col = "red")

pbinom(17,144,1/6)