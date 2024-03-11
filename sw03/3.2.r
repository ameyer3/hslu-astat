mannfrau <- read.csv("./sw03/mannfrau.csv")
plot(mannfrau$groesse.mann, mannfrau$groesse.frau)


abline(lm(mannfrau$groesse.frau ~ mannfrau$groesse.mann))
lm(mannfrau$groesse.frau ~ mannfrau$groesse.mann)
# a= 110.4440 , b = 0.2884

# pro Zentimeter der Mannes ist frau 0.3 cm groesser
cor(mannfrau$groesse.mann, mannfrau$groesse.frau)
# nahe 0 = keine Korrelation => 0.308
# nahe 1 (-1 bei senken) = korrelation
