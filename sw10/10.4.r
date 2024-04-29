# Kalorien in Hotdogs

chicken <- c(129, 132, 102, 106, 94, 102, 87, 99, 170, 113, 135, 142, 86, 143, 152, 146, 144)
beef <- c(186, 181, 176, 149, 184, 190, 158, 139, 175, 148, 152, 111, 141, 153, 190, 157, 131, 149, 135, 132)

# ungepaart: kein klare Wertzuordnung
# zweiseitig, kein Praeferenz, ob eines hoeher als das andere
# H0: c = b
# Ha: c!= b

# Mittelwerte
mean(chicken) # 122
mean(beef) # 156
# Annahme: Beef hat mehr Kalorien

# Wuerde Wilcox waehlen, da ev keine Normalverteilung

wilcox.test(chicken, beef, paired = FALSE)
# p = 0.00045 sehr klein -> H0 verwerfen
# beef hat mehr Kalorien
