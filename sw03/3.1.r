# Datensatz einlesen
geysir <- read.table("./sw03/geysir.dat", header = TRUE)
# 4 Graphiken im Graphikfenster
par(mfrow = c(2, 2))
hist(geysir[, "Zeitspanne"])
# breaks ist nur ein vorschlag wenn nur eine zahl. waere number of cells
hist(geysir[, "Zeitspanne"], breaks = 20)
# breaks = 41 52 63 74 85 96, ist auch wirklich so forced
hist(geysir[, "Zeitspanne"], breaks = seq(41, 96, by = 11))
hist(geysir[, "Eruptionsdauer"])
