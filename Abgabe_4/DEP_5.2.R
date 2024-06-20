GS_10 <- c(0.1,1.7,1.8,1.9,1.95,2.1,2.2,2.3,2.4,2.5,2.8,3,3.4,3.6,4,4.2)
ID_10 <- c(0.001,0.003,0.005,0.008,0.012,0.030,0.037,0.044,0.053,0.063,0.094,0.114,0.147,0.165,0.2,0.215)

max_ID10 <- max(ID_10)

# Plot the data
plot(GS_10, ID_10, type = "o", col = "blue", xlab = "U_GS [V]", ylab = "I_DS [A]", main = "Steuerkennlinie", ylim = c(0, max_ID10))
legend("topright", legend = c("U_DS = 10V"), pch = 1)