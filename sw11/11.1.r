# install.packages("ISLR")
library(ISLR)

head(Auto)
# ?Auto # = help

# Modell lineare Regression mit mpg als Ziel und horsepower als Praedikator
# mpg = beta0 + beta1 * horsepower

summary(lm(Auto$mpg ~ Auto$horsepower))
# Zusammenahng Zielgroesse & Praedikator?
# p-value: < 2.2e-16 -> fast 0, also Nullhypothese (dass mpg nicht von PS abhaengt) wird verworfen

# Koeffizienten fuer (intercept) und horsepower? positiv/negativ?
# -> intercept (beta0) = y-Achsenabschnitt
# -> horsepower (beta1) = Steigung der Geraden
# -> mpg = 39.93 - 0.157*horsepower (mpg bei 0 PS ist 39.93)
# -> pro PS  kommt das Auto ca 0.15 miles weniger weit per gallon
# negativer Zusammenhang: je mehr PS umso weniger miles per gallon

# Vertrauensintervall mit confint():
confint((lm(Auto$mpg ~ Auto$horsepower)))
# -> wahre Werte liegen zu 95% fuer mpg zwischen 38 - 41 und PS -0.17 & - 0.145
# fuer 1 PS also zwischen -0.17 und -0.145 "mehr" Miles per gallon
# -> sehr schmale intervalle, also sehr aussagekraeftig

# R^2 Wert: Multiple R-squared:  0.6059
# -> Variabbilitaet zu 60% durch das Modell ist
# -> welcher Anteil der Variablitiaet in Y mit Hilfe des Modells durch X erklaert werden kann
# -> ist ok, aber gibt noch andere Praedikatoren die Einfluss auf Benzinverbrauch haben

# Plot: Zielvariable & Praeidkator mit Regressionsgreaten
plot(Auto$mpg ~ Auto$horsepower,
    col = "blue",
    lty = 2, # linetype, here: dashed lined
    main = "Haupttitel",
    xlab = "Ein paar Zahlen",
    ylab = "Andere Zahlen"
)
abline(lm(Auto$mpg ~ Auto$horsepower))
# -> sinken ist sichtbar, aber wolke sinkt nicht linear
# -> deswegen schwacher R^2 Wert
