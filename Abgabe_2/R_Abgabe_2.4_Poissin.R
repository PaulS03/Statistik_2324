dpois(0,3.1)

1 - ppois(5,3.1)
ppois(5,3.1)

sum(dpois(seq(0,100,by=2),3.1))

simulated_results <- rpois(100000, 3.1)
num_zero_goals <- sum(simulated_results == 0)
prob_zero_goals_simulation <- num_zero_goals / 100000

median(simulated_results)

prob_more_than_five_goals_simulation <- 1 - sum(dpois(0:5, 3.1))
fair_odds <- 1 / prob_more_than_five_goals_simulation