min <- 50
std.abw <- 3
n <- 16
weights <- c(46, 48, 52, 49, 46, 51, 52, 47, 49, 44, 48, 51, 49, 50, 53, 47)

# a) Null und Alternativhypothese + Hypothesentest
alpha <- 0.05
# H0:  mu = mu0 = 50
# Ha: mu < 50
# Hypothesentest: (p-Wert)
pnorm(q = mean(weights), mean = min, sd = std.abw / sqrt(n))
# p = 0.0668072 > alpha -> H0 wird nicht verworfen

# b) n = 100, gleicher durchschnittswert
pnorm(mean(weights), min, std.abw / sqrt(100))
# 8.841729e-05 -> sehr viel kleiner als alpha, H0 wird verworfen
# mehr MEssung = mehr Sicherheit, wo wahrer Mittelwert liegt

# c) t-Test ohne Standardabweichung
t.test(weights, mu = min, alternative = "less")
# p-wert = 0.04758 < alpha, H0 wird verworfen knapp
