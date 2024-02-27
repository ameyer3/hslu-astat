d.fuel <- read.table(file = "/home/alina/hslu/4.semester/ASTAT/sw01/d.fuel.dat", header = T, sep = ",")
d.fuel

d.fuel[5, ]

# 1-5 zeilen
d.fuel[1:5, ]

# 1-3 und 57-60
d.fuel[c(1:3, 57:60), ]

# mittelwert aller werte in spalte mpg
mean(d.fuel[, "mpg"])

# mittelwert werte 7-22 in spalte mpg
mean(d.fuel[7:22, "mpg"])

t.kml <- d.fuel[, "mpg"] * 1.6093 / 3.789
t.kml
t.kg <- d.fuel[, "weight"] * 0.45359
t.kg

mean(t.kml)
mean(t.kg)
