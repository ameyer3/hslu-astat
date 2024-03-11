library(MASS)
# sind unabhaengig
A <- 3 / 4
B <- 2 / 3

# Beide Ergebnisse treten auf
# A INTERSECT B
fractions(A * B)

# Mindestens eines von beiden, 1 oder 2
# A union B
fractions(A + B - (A * B))

# Hoechstens eines von beiden = keines oder eines
# ALL - Intersect
fractions(1 - (A * B))

# keines trifft ein
# 1 - union
fractions(1 - (A + B - (A * B)))

# genau eines trifft ein
# union - INTERSECT
fractions(A + B - (A * B) - A * B)
