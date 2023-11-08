data("faithful")


head(faithful)

time <- faithful$waiting
############################################
#a)
x <- sort(time)
x

min_range = 60
max_range = 70

b_k <- max_range-min_range

size = length(faithful$waiting)
size

sum = 0

for (i in x) {
  if(i>=min_range && i<max_range)
    sum <- sum + 1
}

h_k <- sum
h_k

heigth <- h_k/(size*b_k)*100
heigth

############################################
#b)

hist(time, 
     breaks = seq(40,100,by=10),
     prob=TRUE,                  #relative Häufigkeiten
     bor="white",
     xlab = "Wartezeiten",
     ylab = "Relative Häufigkeit") 

############################################
#c)
sum1 = 0

for (i in x) {
  if(i>=70 && i<=90)
    sum1 <- sum1 + 1
}


heigth1 <- sum1/(size*20)


















