data <- mtcars

head(data)

x <- data$hp
y <- data$mpg

cor(x,y) #mpg to hp

plot(x,y,
     main="Korrelation Verbrauch und Pferdestärke bei US Oldtimern",
     xlab="Pferdestärke (in hp)",
     ylab="Verbrauch (in mpg)",
     pch=19)

