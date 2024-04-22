# p-Wert = woe gut Nullhypothese und Daten zusammenpassen:
# 0 gar nicht, 1 sehr gut
# Wahrscheinlichkeit dass Nullhypothese gueltig ist
# Verwerfe H0 falls p <= alpha

# H0: mu = mu0
# t Verteilung = wie Normalverteilung eifach flacher weil unsicherer

# Verwerfungsbereich:
# qt() vs qnorm

# p-Wert
# pt()

# alles zusammen:
# t.test()

# H0: mu0 = 70


samples <- c(71, 69, 67, 68, 73, 72, 71, 71, 68, 72, 69, 72)
# alternative hypothesis is less than alpha, default is two sided
t.test(samples, mu = 70, alternative = "less")
# p = 0.666
# p ist deutlich groesser als alpha 0.05 -> Messreihe passt zu Nullhypothese

# Vergleich p-wert 9.1 mit z test
# q = avg von samples
pnorm(q = 70.25, mean = 70, sd = sqrt(std.abw^2 / 12))
# = 0.7181
# 0.66 < 0.72, da unbekannte standardabweichung fuer t-test
# zusaetzliche Unsicherheit macht

# Ergebnis aber von anfang an klar: Test wir nach
# unten gemacht, aber mean ist scho ueber 70
