# Erwartungswert berechenen mit:
k.neg5 <- 0.3
k.1 <- 0.1
k.3 <- 0.2
k.6 <- 0.3
k.neg4 <- 1 - k.neg5 - k.1 - k.3 - k.6

x <- c(-5, -4, 1, 3, 6)
p <- c(0.3, 0.1, 0.1, 0.2, 0.3)

E_X <- sum(x * p)
E_X # = 0.6
