# doped 0.2 -> p.d=0.9
# nichtDoped -> p.nD=0.05

d <- 0.2
p.d <- 0.99
nD <- 0.8
p.nD <- 0.05
# a) P(p)
p <- d * p.d + nD * p.nD
p # 0.238

# b) negativ, obwohl doping P(nP|d)
nP.d <- 1 - p.d
nP.d # 0.01

# c) doping wenn nP P(d|nP)
# Bayes: P(K|T) = (K intersect T) / P(T) = (P(T|K)*P(K)) / P(T)
nP <- 1 - p
d.nP <- (nP.d * d) / nP
d.nP # 0.00262 <- negativer Test recht aussagekraeftig
