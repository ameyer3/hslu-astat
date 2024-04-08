avg <- 77
std.abw <- 15

n1 <- 25
n2 <- 64
(std.abw^2) / n2

# a)
# avg im Kurs 1 zwischen 72 und 82?
pnorm(q = 82, mean = avg, sd = sqrt((std.abw^2) / n1)) - pnorm(q = 72, mean = avg, sd = sqrt((std.abw^2) / n1))
# = 90.44%

# b)
# avg im Kurs 2 zwischen 72 und 82?
pnorm(q = 82, mean = avg, sd = sqrt(std.abw^2 / n2)) - pnorm(q = 72, mean = avg, sd = sqrt(std.abw^2 / n2))
# = 99.23%

# b ist groesser, weil Standardabweichung ist hier kleiner
# hat also mehr Werte in diesem Bereich
sqrt((std.abw^2) / n1) # 3
sqrt(std.abw^2 / n2) # 1.875
