library("MASS")
head(Boston)

# Modell: medv ~ beta0 + beta1 * lstat + beta2 * age
summary(lm(medv ~ lstat + age, data = Boston))
# -> intercept = 33.22 -> wenn 0 alte haeuser und 0 lower pop -> preis ist 33'000
# lstat = -1.03. konstantes age -> 1030 weniger bei 1 mehr lower pop
# age = 0.034. konstante pop -> 34.- mehr pro 1 mehr alter

# p der Koeffiziernten: lstat und medv sehr klein, also abhaengig
# p von age: groesser aber immer noch klein, also klienerer einfluss als lstat
# -> beide haben einfluss signfikiant auf das modell
# p-wert f statistik = sehr klein, also H0 verwerfen, also ist abhaengig von age oder lstat (min eines)
# r^2 = 0.54 -> 55% der Variationen durch Modell erkaleren


# alle 13 variablen:
summary(lm(medv ~ ., data = Boston))
# age p =  0.958229 (=eineiges groesser (fast 1) als vorher, hat also
# eingies weniger einfluss (nicht signifikant) als vorher
# age muss stark mit anderen variablen korrelieren

# r ist groesser als vorher: steigt mit mehr variablen
# -> r^2 kein guter indikator um modelle zu vergelichen

# Interaktionsterm
# medv = β0 + β1 · lstat + β2 · age + β12 · lstat*age
# hier: lstat * age ist interaktion nicht multiplikation

summary(lm(medv ~ lstat * age, data = Boston))
# beta0: 36 (kein age und kein low pop = 36000.-)
# beta1: -1.39 (1 mehr low pop =-1390)
# beta2: -0.0007 (1 mehr age =-0.7) -> nicht signigikant (p=0.9)
# beta12: 0.004 idk

# p0: signifikant: sehr klein
# p1: signifikant: sehr klein
# p2: nicht signifikant (ist fast 1)
# ->(TODO: WIESO vgl vorher) weil stark korreliert mit anderem Praedikator
# -> also dessen einfluss nicht so gross direkt, aber weil einfluss auf anderen Praed.
# wirkte doch sehr wichtig, jetzt mit beruecksichtigung davon wirkt weniger wichtig direkt
# p12: 0.02 signigkant (unter 5%) -> H0 (gibt keine Interaktion) vewerden

cor(Boston["lstat"], Boston["age"]) # =0.602
# recht hoch -> ev: arme menschen weniger geld um haeuser zu bauen (also mehr alte Haeuser)?


# p f statsitk:Einer der β’s unterscheidet sich signifikant von 0. Mindestens eine Variable
# trägt signifikant zum Modell bei
# r^2: t 0, 56, daher wird etwa 56 % der Variation durch
# das Modell erklärt
