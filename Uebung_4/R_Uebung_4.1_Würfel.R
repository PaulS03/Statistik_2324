#(1,1),(1,2),(1,3),(1,4),
#(2,1),(2,2),(2,3),(2,4),
#(3,1),(3,2),(3,3),(3,4),
#(4,1),(4,2),(4,3),(4,4).

n <- 1000000
sa1 <- sample(1:4, size = n, replace = TRUE)
sa2 <- sample(1:4, size = n, replace = TRUE)

e <- sa1+sa2

sum(e>=6)/n

one   <- sum(sa==1);one
two   <- sum(sa==2);two
three <- sum(sa==3);three
four  <- sum(sa==4);four

one+two+three+four

one/n*100
two/n*100
three/n*100
four/n*100