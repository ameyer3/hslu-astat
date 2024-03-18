# hoechstens 8 fragen richtig = 0.711
k.1.correct <- 0.2
k.up.8 <- 0.711
k.up.9 <- 0.939
k.up.10 <- 0.969
k.up.11 <- 0.982
k.up.12 <- 0.989
k.up.13 <- 0.992
k.up.14 <- 0.999
k.up.15 <- 1

# a) hoechstens 13 Aufgaben richtig
k.up.13

# b) mindestens 10 Aufgaben richtig: 1- hoechstens 9
1 - k.up.9

# c) genau 15 richtig: hoechstens 15 - hoechstens 14
k.up.15 - k.up.14

# d)zwischen 9 und 12 Aufgaben richtig: 9, 10, 11 oder 12 richtig: hoechstens 12 - hoechstens 8
k.up.12 - k.up.8
