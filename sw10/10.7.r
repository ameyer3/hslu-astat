# Temperatur vor un Nach Medikament messen

# gepaart: vorher und nachher wird zugeordnet
# einseitig: Senkung soll gemessen werden
# H0: tempV = tempN
# HA: tempV > tempN

tempV <- c(39.1, 39.3, 38.9, 40.6, 39.5, 38.4, 38.6, 39.0, 38.6, 39.2)
tempN <- c(38.1, 38.3, 38.8, 37.8, 38.2, 37.3, 37.6, 37.8, 37.4, 38.1)
# Normalverteilung also t.test
t.test(tempV, tempN, paired = TRUE, alternative = "greater")
# p = 0.0001554 < 0.05 H0 verfaellt

# Nicht normalverteilt also wilcox
wilcox.test(tempV, tempN, paired = TRUE, alternative = "greater")
# p = 0.0028 < 0.005 H0 verfaellt

# p wert unterschiede von ttest und wilcox:
# Wilcox > t.test
# Wilcos ist unsicherer, weil weniger Annahmen (Normalverteilung)
# -> H0- wird weniger stark verworfen
