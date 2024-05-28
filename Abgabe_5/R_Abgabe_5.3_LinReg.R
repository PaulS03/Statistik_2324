library(ggplot2)

airbnb <- read.csv("airbnb.csv")
attach(airbnb)

ggplot(airbnb, aes(x = Distanz, y = Preis)) + geom_point()

#plot(Distanz,Preis,pch=19,xlab="Distanz in km",ylab="Preis in Euro",
#     bty="n",cex=0.6,xlim=c(0,max(Distanz)),ylim=c(18,max(Preis)))
#abline(a=73,b=-8,col=2,lwd=2)

modell <- lm(Preis~Distanz)$coeff; modell
b_0 <- as.numeric(modell[1])
b_1 <- as.numeric(modell[2])


change <- b_1 * 3
change


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

