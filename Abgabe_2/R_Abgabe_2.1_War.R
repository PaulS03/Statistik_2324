#a)
omega <- expand.grid(Wurf1 = 1:4, Wurf2 = 1:4, Wurf3 = 1:4)
#b)
zweistellige_summe <- subset(omega, (Wurf1 + Wurf2 + Wurf3) >= 10)
wahrscheinlichkeit_zweistellig <- nrow(zweistellige_summe) / nrow(omega)
##########################
nrow(omega)


##########################
#c)

# Ereignis B: Drei unterschiedliche Augenzahlen
# Ereignis B: Drei unterschiedliche Augenzahlen
event_B <- subset(omega, length(unique(Wurf1, Wurf2, Wurf3)) == 3)

unterschiedliche_augenzahlen <- subset(omega, unique(Wurf1, Wurf2, Wurf3) == 3)
wahrscheinlichkeit_unterschiedlich <- nrow(unterschiedliche_augenzahlen) / nrow(omega)

unterschiedliche_augenzahlen

unique(1,2,2)
alalal <- c(Wurf1 = 1:4, Wurf2 = 1:4, Wurf3 = 1:4)
alalal