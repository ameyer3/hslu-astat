samples <- c(71, 69, 67, 68, 73, 72, 71, 71, 68, 72, 69, 72)
std.abw <- 1.5

avg <- mean(samples)
std.abw.samples <- sd(samples)

# q = signifikanzniveau 5%
# wie hoch das risiko ist, das man eingehen wuerde, eine falsche Etnscheidung zu treffen
# = symmetrischer teil um mittelwert 70 soll 95% sein

# 1. i.i.d ~ N(mu, std^2),std^2 = 1.5^2
# 2. Nullhypothese H0 = mu = mu0 = 70
# 2. Alternativhypothese: Ha = mu < mu0 = 70
# 3. Verteilung Teststatisitk: X12 = N(70, 1.5^2 / 12)
# 4. Signifikanzniveau alpha=5%
# 5. Verwerfungsbereich fuer Teststatistik:
qnorm(p = 0.05, mean = 70, sd = sqrt(std.abw^2 / 12))
# = K = (-infinity, 69.29)
# 6. Testentscheid:
avg # = 70.25

# -> ist plausibel
# Nullhypothese annehmen und Alternativhypothese verwerfen
