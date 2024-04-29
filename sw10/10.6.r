mf <- read.csv("sw02/mannfrau.csv")

# gleiches wie mf["alter.mann"]
diff <- mf$alter.mann - mf$alter.frau
boxplot(diff, col = "green")

# gepaart: Ehepaare zusammen
# zweiseitig Test: weil wir wissen nicht wer wirklich aelter
# Normalverteilung und alpha 0.05
# H0: Mann = Frau
# HA: Mann > Frau

# TODO: when is zweiseitig and when einseitig
t.test(mf$alter.mann, mf$alter.frau, paired = TRUE)
# p = sehr sehr klein -> Verwerfen
# 95% Vertrauensinterval: 1.61826 - 2.852302
# zu 95% ist Mann zwischen 1.6 Jahr und 2.9 Jahr aelter
# 0 ist hier nicht drin -> verwerfen

# doch keine Normalverteilung:
wilcox.test(diff)
# p sehr sehr klein

# b
# Maenner 13 cm groesser als Frauen
# ungepaart (geht generall um Geschlechter)
# zweiseitig: wissen nicht ob Abweichung hoch oder runter
# h0: m - f = 13 -> m-13 = f
# ha: m-f != 13 -> m-13 != f

t.test(mf$groesse.mann - 13, mf$groesse.frau)
# Vertrauensinterval:-1.81, 0.92 0 (Abweichung von 13) ist drin, also gut
# p = 0.52 > 0.05
