library(ISLR)
head(Auto)

# Streudiagramm
pairs(Auto)

# Korrealtionsdiagramm
# Name entfernen, weil ist nur Qualitativ
cor(within(Auto, rm(name)))

# horsepower und displacement:
# cor ist 0.8973 -> korrelieren also
# sichtbar in streudiagramm: positiver linearer Zusammenhang

summary(lm(mpg ~ ., data = within(Auto, rm(name))))

# p wert zum f wert: 2.2e-16 (fast 0), also starker einfluss praedikaotren auf zielvariable
# welche praedikatoren signifikant: die mit *** oder **: displacement, weight, origin, year
# koeffizient in year: 0.75: pro modeljahr++ (neuer) wird 0.75 miles per gallon mehr

# Interaktionseffekte:
summary(lm(mpg ~ year * weight, data = Auto))
# p = 8.02e-14: sehr hohe korrelation (h0 verworfen)
# -> weniger gewicht mit juengeren autos
