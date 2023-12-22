dpois(0,3.1)

1 - ppois(5,3.1)
ppois(5,3.1)

sum(dpois(seq(0,100,by=2),3.1))

simulated_results <- rpois(100000, 3.1)
num_zero_goals <- sum(simulated_results == 0)
prob_zero_goals_simulation <- num_zero_goals / 100000

median(simulated_results)

prob_MoreThanFive <- 1 - ppois(5,3.1)

fairQuote <- 1 / prob_MoreThanFive

#d)
#E(Gewinn) = prob_More*Gewinn_More-prob_Less*NotGewinn_More
#E(Gewinn) = 0
# => prob_More*Gewinn_More = prob_Less*Einsatz
#<=> prob_More * (Einsatz * (Quote-1)) = prob_Less*Einsatz
#<=> prob_More * (Quote-1) = prob_Less
#<=> prob_more*Quote - prob_More*1 = porb_Less
#<=> prob_More*Quote = prob_Less + prob_More
#<=> prob_More*Quote = 1
#<=> Quote = 1 / prob_More