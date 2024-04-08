avg <- 2.2
std.abw <- 0.3
n <- 100
# bei 100 Zigaretten:
avg.100 <- 3.1

# Wahrscheinlichkeit, dass Stichprobenmittel = 3.1 oder mehr
# P(X>= 3.1)
1 - pnorm(q = 3.1, mean = avg, sd = sqrt(std.abw^2 / 100))
# = 0

# -> Wahrscheinlichheit ist so klein
# Hersteller muss fast luegen mit den 2.2
