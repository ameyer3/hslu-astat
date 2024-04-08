####################
# Normalverteilung #
####################

avg <- 180
std.abw <- 7.4

# a)
# P(170 < X ≤ 180)
# q = <=
p <- pnorm(q = 180, mean = avg, sd = std.abw) - pnorm(q = 170, mean = avg, sd = std.abw)
p # 0.4117 = 41.17% sind zwischen 170 und 180

# b)
# symmetrisches Bereich um Mittelwert sind 50% der Groessen?
# also: |--{q25}--[50%]--{q25}--|
# finde q(0.25) und q(0.75)

# quantile berechnen
q25 <- qnorm(p = 0.25, mean = avg, sd = std.abw)
q75 <- qnorm(p = 0.75, mean = avg, sd = std.abw)
q25 # 175.0088
q75 # 184.9912
# 50% liegen zwischen 175 und 185

# oder:
qnorm(p = c(0.25, 0.75), mean = 1.8, sd = 0.074)

# c) min.groesse der 5% groessten
# q95
qnorm(p = 0.95, mean = avg, sd = std.abw) # min 192
