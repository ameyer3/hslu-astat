k.1 <- 0.4
k.2 <- 0.2
k.3 <- 0.2
k.4 <- 0.1
k.5 <- 0.1

# a) -> ja, weil Wahrscheinlichkeiten ergeben 1
# b) Wahrscheinlichkeit, dass zwischen 2 & 4 Mitglieder: P(2<=X>=4)=
# P(X=2) + P(X=3) + P(X=4)
k.2 + k.3 + k.4

# c)mehr als zwei Mitglieder: P(X>2) = 1 P(X<=2) = 1 - P(X=1) - P(X=2)
1 - k.1 - k.2

# d) hoechstens 4 Mitglieder: P(X<=4) = 1 - P(X=5)
1 - k.5

# e) einen Mehrperesonenhaushalt = P(X>1) = 1 - P(X=1)
1 - k.1
