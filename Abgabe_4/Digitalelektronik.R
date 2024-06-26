library(ggplot2)
# Vektoren mit den Werten für jede Spalte
V_in <- c(0.02, 0.03, 0.4, 0.5, 0.7, 0.75, 0.85, 1, 1.3, 3, 3.5, 4, 4.5, 5)
Ampere <- c(0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 0.002, 0.003, 0.005, 0.02, 0.025, 0.03, 0.035, 0.041)
V_durch <- c(0.04, 0.019, 0.048, 0.13, 0.574, 0.585, 0.602, 0.622, 0.648, 0.709, 0.717, 0.724, 0.731, 0.737)

# Erzeugen der Tabelle
daten <- data.frame(V_in = V_in, Ampere = Ampere, V_durch = V_durch)

plot <- ggplot(daten, aes(x = V_in)) +
  geom_line(aes(y = Ampere, color = "Ampere")) +
  geom_line(aes(y = V_durch, color = "V_durch")) +
  geom_line(aes(y = Ampere2, color = "Ampere2")) +
  geom_line(aes(y = V_durch2, color = "V_durch2")) +
  scale_color_manual(values = c("red", "blue", "violet", "green")) +
  labs(x = "V_in", y = "A / V_durch", color = "Graphen") +
  geom_vline(xintercept = 0.7, linetype = "dashed") +
  theme_minimal()


V_in2 <- c(0.02, 0.03, 0.6, 0.3, 0.7, 0.78, 0.85, 1.6, 1.3, 3, 3.5, 4, 4.5, 5)
Ampere2 <- c(0.001, 0.001, 0.001, 0.001, 0.001, 0.004, 0.002, 0.003, 0.006, 0.02, 0.025, 0.03, 0.035, 0.041)
V_durch2 <- c(0.04, 0.019, 0.048, 0.13, 0.65, 0.7, 0.602, 0.622, 0.648, 0.709, 0.78, 0.724, 0.8, 0.9)

# Erzeugen der Tabelle
daten2 <- data.frame(V_in = V_in2, Ampere = Ampere2, V_durch = V_durch2)

plot2 <- ggplot(daten2, aes(x = V_in2)) +
  geom_line(aes(y = Ampere2, color = "Ampere")) +
  geom_line(aes(y = V_durch2, color = "V_durch")) +
  scale_color_manual(values = c("red", "blue")) +
  labs(x = "V_in", y = "A / V_durch", color = "Graphen") +
  geom_vline(xintercept = 0.7, linetype = "dashed") +
  theme_minimal()

# Ausgabe der Tabelle
print(plot)

