data <- mtcars
data2 <- read.csv("all_seasons.csv")

a <- data2$player_height
b <- data2$gp
c <- data2$ast

plot(x,a)
plot(a,c)

cor(a,x)
cor(a,c)

x <- data$mpg
y <- data$hp

z <- data$qsec

j <- data$wt

cor(x,y) #mpg to hp

cor(x,z) #mpg to quarter mile

cor(j,z) #weight to quarter mile

plot(y,x)
