## ---- myrcode2.3.1
x<-c(1,3,4,7,8,10)
p<-c(0.2,0.3,0.1,0.1,0.1,0.2)

EX <- sum(x*p); EX
## ---- myrcode2.3.2
VarX <- sum((x-EX)^2*p); VarX
## ---- myrcode2.3.3
n <- 10^6
X <- sample(x,size=n,prob = p, replace = TRUE)

mean(X)
var(X)
## ---- myrcode2.4.1
prob_NoGoals <- dpois(0,3.1); prob_NoGoals
## ---- myrcode2.4.2
prob_MoreThanFive <- 1 - ppois(5,3.1); prob_MoreThanFive
## ---- myrcode2.4.3
prob_EvenGoals <- sum(dpois(seq(0,100,by=2),3.1)); prob_EvenGoals
## ---- myrcode2.4.4
simulated_results <- rpois(100000, 3.1)
num_NoGoals <- sum(simulated_results == 0)
prob_NoGoals_simulation <- num_NoGoals / 100000
prob_NoGoals_simulation
## ---- myrcode2.4.5
median(simulated_results)
## ---- myrcode2.4.6
fairQuote <- 1 / prob_MoreThanFive
fairQuote