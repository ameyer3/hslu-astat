# install.packages("ISLR")
library(ISLR)
head(Carseats)

summary(lm(Sales ~ Price + Urban + US, data=Carseats))
# 13.04: wenn nicht Urban und nicht in US und Preis=0, dann werden 13 Kindersitze verkauft
# Price um 1 hoeher: -0.05 weniger Carseats verkauft
# wenn urban: 0.02 Kindersitze weniger verkauft: P hoch also zufaellig
# wenn in US: 1.2 Kindersitzer mehr verkauft

# Gleichungsform:
# urban: x2i = {1=Urban, 0=Land}
# US: x3i = {1 falls in USA, 0=not-USA}
#yi = b0 - Price*b1 - x2i*b2 + x3i*b3 + ei
# + b2 + b3 +ei -> urban in usa
# + b3 + ei: rural in USA
# + b2 + ei: urban nicht in USA
# ei: rural nicht in usa

# H0 verwerfen: fuer Price und US (p sehr klein)

# kleineres Modell mit nur passenden Praedikatioren:
summary(lm(Sales ~ Price + US, data=Carseats))
# US: x3i = {1 falls in USA, 0=not-USA}
#yi = b0 - Price*b1 - x2i*b2 + ei
# Zusammenhang ist gegeben, aber R^2: 0.23 -> sehr schlecht
# nur 23% der Variabilitaets kann mit Modell erklaert werden