# Muenze werfen dreimal, X = wie oft Zahl
# k =   0 | 1 | 2 | 3
# P(k=X):

# | ZZZ, ZZK, ZKZ, KZZ, ZKK, KZK, KKZ, KKK | = 8
k.0 <- 1 / 8
k.1 <- 3 / 8
k.2 <- 3 / 8
k.3 <- 1 / 8

# b) genau zwei mal zahl:
k.2

# c) mindestens zwei mal zahl: 2 oder 3 mal Zahl
k.2 + k.3

# d) hoechstens ein mal zahl
k.1 + k.0
