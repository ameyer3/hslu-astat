winner <- c(
    183, 191, 185, 185, 182, 182, 188,
    188, 188, 185, 185, 177, 182, 182, 193, 183, 179, 179, 175
)
opponent <- c(
    191, 165, 187, 175, 193, 185, 187,
    188, 173, 180, 177, 183, 185, 180, 180, 182, 178, 178, 173
)

length(winner)
length(opponent)
# 6. bis 10. eintrag
winner[6:10]

# 3, 5 und 10-12
winner[c(3, 5, 10:12)]

winner[c(7, 8)] <- 189
winner[c(7, 8)]

mean(winner)
mean(opponent)

mean(winner) - mean(opponent)

# variance
var(winner)

# standardabweichung
sd(winner)

average <- mean(winner)
zaehler <- 0
# variance & sd manually
for (x in winner) {
    zaehler <- zaehler + (x - average)^2
}

var <- zaehler / (length(winner) - 1)
# variance
var
# standard deviation
sqrt(var)
