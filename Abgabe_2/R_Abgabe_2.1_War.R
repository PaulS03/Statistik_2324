omega <- expand.grid(Wurf1 = 1:4, Wurf2 = 1:4, Wurf3 = 1:4)


zweistellige_summe <- subset(omega, (Wurf1 + Wurf2 + Wurf3) >= 10)
wahrscheinlichkeit_zweistellig <- nrow(zweistellige_summe) / nrow(omega)

unterschiedliche_augenzahlen <- subset(omega, length(unique(c(Wurf1 = 1:4, Wurf2 = 1:4, Wurf3 = 1:4))) == 3)
wahrscheinlichkeit_unterschiedlich <- nrow(unterschiedliche_augenzahlen) / nrow(omega)

c(Wurf1, Wurf2, Wurf3)