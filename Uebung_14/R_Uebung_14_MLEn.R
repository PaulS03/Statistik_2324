x <- scan("http://www.rolandlangrock.com/Daten/minkwal.dat")

hist(x,breaks=15,col="lightgrey",main="z",xlab="Unterwasserzeit",
     ylab="rel. Haeufigkeit/Klassenbreite",prob=TRUE,border="white")


logL <- function(lambda){48*log(lambda)-lambda*sum(x)