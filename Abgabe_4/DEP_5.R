library(ggplot2)
library(patchwork)
library(ggpubr)
# Vektoren mit den Werten für jede Spalte
DS_2 <- c(0.2,0.5,2,3,7,10,11,12.6,15,30)
ID_2 <- c(0.007,0.01,0.011,0.012,0.013,0.017,0.018,0.027,0.042,0.07)
DS_3 <- c(0.24,1,1.5,2,5.5,10,)
ID_3 <- c(0.029,0.099,0.115,0.12,0.121,0.127)

# Erzeugen der Tabelle
daten2 <- data.frame(DS_2 = DS_2, ID_2 = ID_2)
daten3 <- data.frame(DS_3 = DS_3, ID_3 = ID_3)


plot2 <- ggplot(daten2, aes(x = DS_2)) +
  geom_line(aes(y = ID_2, color = "ID_2")) +
  scale_color_manual(values = c("red", "blue")) +
  labs(x = "V_in", y = "A / V_durch", color = "Graphen") +
  theme_minimal()

plot3 <- ggplot(daten3, aes(x = DS_3)) +
  geom_line(aes(y = ID_3, color = "ID_3")) +
  geom_line(y = ID_3, color = "green")+
  scale_color_manual(values = c("red", "blue")) +
  labs(x = "V_in", y = "A / V_durch", color = "Graphen") +
  theme_minimal()

combined_plot <- ggarrange(plot2,
                           plot3,
                           nrow = 2,
                           ncol = 1)

print(combined_plot)