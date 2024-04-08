erw <- 4
std.abw <- 1.25


# a) P <= 2.5 & P >= 5
p2.5 <- pnorm(q = 2.5, mean = erw, sd = std.abw)
p5 <- 1 - pnorm(q = 5, mean = erw, sd = std.abw)
p2.5 # 11.5% sind unter oder gleich 2.5kg
p5 # 21.18% sind ueber oder gleich 5kg
p <- p2.5 + p5

# b) zwischen 3 und 4.5kg
# P(3<=X<=4.5)
pnorm(q = 4.5, mean = erw, sd = std.abw) - pnorm(q = 3, mean = erw, sd = std.abw)
# 44.36% sind zwischen 3 und 4.5kh

# c) gewicht der oberen 2 %
# q98
qnorm(p = 0.98, mean = erw, sd = std.abw)
# = 6.567kg oder mehr damit in oberen 2%
