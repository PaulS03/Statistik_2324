# Define the data
DS_2 <- c(0.2,0.5,2,3,7,10) #12
ID_2 <- c(0.007,0.01,0.011,0.012,0.013, 0.014)
DS_3 <- c(0.24,1,1.5,2,5.5,10)
ID_3 <- c(0.029,0.099,0.115,0.12,0.121,0.124)
DS_5 <- c(0.25,0.3,0.6,1,1.5,2,2.5,3,5,10)
ID_5 <- c(0.045,0.056,0.12,0.15,0.21,0.245,0.26,0.28,0.283,0.285)
DS_6 <- c(0.25,0.3,1,1.5,2,2.5,3,4,5,10)
ID_6 <- c(0.051,0.061,0.165,0.242,0.275,0.29,0.31,0.313,0.315,0.319)
DS_8 <- c(0.25, 0.3,0.8,1,1.5,2,2.5,3,4,5,10)
ID_8 <- c(0.02,0.07,0.18,0.21,0.26,0.29,0.31,0.33,0.36,0.365,0.37)
geradeX <- c(0,5)
geradeY <- c(1,0)

max_ID <- max(c(ID_2, ID_3, ID_5, ID_6, ID_8))

# Plot the data
plot(DS_2, ID_2, type = "o", col = "blue", xlab = "U_DS [V]", ylab = "I_DS [A]", main = "Ausgangskennlinienfeld", ylim = c(0, 0.6))
points(DS_3, ID_3, type = "o", col = "red")
points(DS_5, ID_5, type = "o", col = "green")
points(DS_6, ID_6, type = "o", col = "violet")
points(DS_8, ID_8, type = "o", col = "pink")
points(geradeX, geradeY, type = "o", col = "black")
points(3.31,0.34, pch = 19)
points(3.46,0.31, pch = 19)
points(3.598,0.28, pch = 19)
points(4.40,0.12, pch = 19)
points(4.95,0.012, pch = 19)
legend("topright", legend = c("U_GS = 2V", "U_GS = 3V", "U_GS = 5V", "U_GS = 6V", "U_GS = 8V"),
        col = c("blue", "red", "green", "violet", "pink"), pch = 1)
