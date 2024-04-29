diff <- -5.78
std.abw <- 6.2

# B maesse systematisch groesser
# gepaarte Stichproben, an gleichem Ort wird mit beiden Geraeten gemessen

# t-test mit alpha = 0.05 (=Signifikanzniveau)
# Modellannahme:  i.i.d ~ N(mu, std^2),std^2
# Nullhypothese: A = B
# Alternative:  A < B
# Testergebnis:
a <- c(120, 265, 157, 187, 219, 288, 156, 205, 163)
b <- c(127, 281, 160, 185, 220, 298, 167, 203, 171)

t.test(a, b, paired = T, alternative = "less")

# p = 0.01168 < alpha, also Nullhypothese verwerfen
# B misst also statistisch mehr
