data("faithful")


head(faithful)

time <- faithful$waiting
############################################
#a)
x <- sort(time)
x

min_range <- 60
max_range <- 70

b_k <- max_range-min_range

size <- length(faithful$waiting)
size

summe <- 0

for (i in x) {
  if(i>min_range && i<=max_range)
    summe <- summe + 1
}

h_k <- summe
h_k

heigth <- h_k/(size*b_k)
heigth
heigthP <- heigth*100
heigthP

sum(faithful$waiting>60 & faithful$waiting<=70)

############################################
#b)

hist(time, 
     breaks = seq(40,100,by=10),
     prob=TRUE,                  #relative Häufigkeiten
     bor="white",
     xlab = "Wartezeiten",
     ylab = "Relative Haeufigkeit")

############################################
#c)
sum(faithful$waiting>60 & faithful$waiting<=90)


















