# Baby hat Down syndrom
d <- 0.01
# positiv wenn DS
p.d <- 0.9
# positiv wenn nDS
p.nD <- 0.01

# positiv, wie wahrscheinlich dass d?
# P(d|p)
# Bayes: P(K|T) = (K intersect T) / P(T) = (P(T|K)*P(K)) / P(T)
nD <- 1 - d
p <- p.d * d + p.nD * nD
d.p <- (p.d * d) / p
d.p # 0.47619 wahrsch, dass Baby DS hat bei positivem test
