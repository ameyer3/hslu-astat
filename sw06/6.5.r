# Alarm wenn Feuer
a.f <- 0.95
# Alarm wenn kein Feuer
a.notF <- 0.01

# 1 Brand pro Jahr
f <- 1 / 365

# Feuer wenn Alarm: f.a
# Bayes: P(K|T) = (K intersect T) / P(T) = (P(T|K)*P(K)) / P(T)
notF <- 1 - f
a <- a.f * f + a.notF * notF
f.a <- (a.f * f) / a
f.a # 0.2069 nur 20% bedeuten Feuer

# wenn kein Alarm, kein Feuer: notF.notA
# f = a.F 0.95 / notA.f 1-0.95
# nF = a.nF 0.01 / notA.nF 1-0.01
notA.notF <- 1 - a.notF
notA <- 1 - a
notF.notA <- (notA.notF * notF) / notA
notF.notA # 0.99986 praktisch sicher, dass es kein feuer gibt
