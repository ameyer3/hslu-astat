head(InsectSprays)

# Mittelwert einzelner Sprays
# apply FUNktion mean auf Spalte InsectSprays [,"count"]
# ordnet nach Spalte Spray InsectSprays [,"spray"]
tapply(InsectSprays[, "count"], InsectSprays[, "spray"], FUN = mean)

# das gleiche:
tapply(InsectSprays$count, InsectSprays$spray, mean)

# boxplot (y ~ x):
# boxplot (Werte nehmen ~ namen, denen sie zugeordnet werden)
boxplot(count ~ spray,
    data = InsectSprays,
    col = c(
        "orange", "blue", "darkseagreen", "deeppink",
        "brown", "aquamarine"
    )
)
