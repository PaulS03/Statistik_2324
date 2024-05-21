library(ggplot2)

airbnb <- read.csv("airbnb.csv")
attach(airbnb)

ggplot(airbnb, aes(x=Distanz, y=Preis))+
  geom_point()+
  labs(x="Distanz zum Stadtzentrum (km)", y="Preis (EUR)")

modell <- lm(Preis ~ Distanz, data = airbnb)

summary(modell)

beta_1 <- coef(modell)["Distanz"]
delta_km <- 3
verringerung_preis <- beta_1 * delta_km
verringerung_preis

# Streudiagramm mit Regressionsgerade ergänzen
ggplot(airbnb, aes(x = Distanz, y = Preis)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(x = "Distanz zum Stadtzentrum (Km)", y = "Preis (Euro)")

# Distanz zum Stadtzentrum für einen Preis von genau 60 Euro ermitteln
preis <- 60
distanz_60_euro <- (preis - coef(modell)["(Intercept)"]) / coef(modell)["Distanz"]
distanz_60_euro

