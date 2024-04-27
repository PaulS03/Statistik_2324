## ---- myrcode4.1.1
fXY <- matrix(c(0.0,0.1,0.4,
                0.3,0.2,0.0), ncol = 3, byrow = TRUE)

fX <- apply(fXY, 1, sum); fX
fY <- apply(fXY, 2, sum); fY

EX <- sum((0:1)*fX); EX
EY <- sum((1:3)*fY); EY

products <- (0:1)%*%t(1:3)
gewProducts <- products*fXY

EXY <- sum(gewProducts); EXY

covXY <- EXY-(EX*EY); covXY

varX <- sum((0:1)^2*fX)-EX^2; varX
varY <- sum((1:3)^2*fY)-EY^2; varY

rho <- covXY / (sqrt(varX)*sqrt(varY)); rho


## ---- myrcode4.2.1
SP500 <- read.csv("SP500.csv")

sortedSP500 <- SP500[order(SP500$Rendite), ]

sortedSP500[1:2,]


## ---- mycode4.2.2