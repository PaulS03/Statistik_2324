Tore <- read.csv("Aufgabe2.csv")
Tx <- sort(Tore$x)

#a)
freq <- table(Tx)

max_freq <- names(freq)[which.max(freq)]
max_freq

#b)
mean(Tx)

median(Tx) 

#c)
korVar <- var(Tx) * (length(Tx)-1) / length(Tx)
korVar

#d)
a <- 0.9
if (((length(Tx)*a) %% 1) != 0) { #case n*a is not integer
  l_1 <- Tx[ceiling(length(Tx)*a)]
  cat(l_1 ,"Tore") #6 at index 276
} else { #case n*a is integer
  l_2 <- (Tx[length(Tx)*a] + (Tx[(length(Tx)*a)+1])) / 2
  cat(l_2 ,"Tore")
}

