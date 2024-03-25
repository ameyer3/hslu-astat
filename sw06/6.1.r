# b) gegebene Wahrscheinlichkeiten
p.k <- 0.01 # dass man krank ist
p.t.k <- 0.98 # k|t, positiv getestet wenn krank
p.t.not.k <- 0.03 # wenn gesund, test ist positiv

# c) P(notK) -> wahrscheinlichkeit gesund zu sein
p.not.k <- 0.99 # 1-p.k

# d) Wahrscheinlichkeit eines positiven Ergebnis
# p.k -> p.t.k & p.not.t.k (krank -> positiv & negativ)
# p.not.k -> p.t.not.k & p.not.t.not.k (gesund -> positiv & negativ)

p.t <- (p.t.k * p.k) + (p.t.not.k * p.not.k)
p.t # 0.0395 = 3,95% der getesteten sind positiv

# e) positiver Test heisst auch wirklich krank
# wenn ich positiv bin, bin ich auch wirklich krank
# Bayes: P(K|T) = (K intersect T) / P(T) = (P(T|K)*P(K)) / P(T)
p.k.t <- (p.t.k * p.k) / p.t
p.k.t # 0.2481 <- 25% aller positiven sind auch wirklich krank

# f) negative getestet ist gesund P(notK|notT)
p.not.t.not.k <- 1 - p.t.not.k
p.not.t <- 1 - p.t
p.not.k.not.t <- (p.not.t.not.k * p.not.k) / p.not.t
p.not.k.not.t # 0.9997918 <- ist test negativ, ist das sehr sicher = gesund
# positiv sagt nicht viel aus, negativ schon
