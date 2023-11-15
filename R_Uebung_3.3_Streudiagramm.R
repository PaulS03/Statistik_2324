library(readxl)
BLiga <- read_excel("tut4_BLiga2.xlsx")

x <- BLiga$Punkte
y <- BLiga$Marktwert

plot(x,y,
     pch = 19)

cor(x,y)
