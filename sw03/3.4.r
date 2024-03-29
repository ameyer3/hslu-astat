head(anscombe)
par(mfrow = c(2, 2))
plot(anscombe$x1, anscombe$y1)
reg <- lm(anscombe$y1 ~ anscombe$x1)
reg
# a =3.0001   b=    0.5001
abline(reg)
cor(anscombe$y1, anscombe$x1)
# korelliert

plot(anscombe$x2, anscombe$y2)
reg <- lm(anscombe$y2 ~ anscombe$x2)
reg
abline(reg)
cor(anscombe$y2, anscombe$x2)
# korelliart laut cor, ist aber quadratisch und nicht linear
# cor erkennt nur lineare abhaengigkeit

plot(anscombe$x3, anscombe$y3)
reg <- lm(anscombe$y3 ~ anscombe$x3)
reg
abline(reg)
cor(anscombe$y3, anscombe$x3)
# korelliert

plot(anscombe$x4, anscombe$y4)
reg <- lm(anscombe$y4 ~ anscombe$x4)
print(reg)
# a= 3.0017   b=    0.4999
abline(reg)
cor(anscombe$y4, anscombe$x4)
# korelliert laut cor, aber halt sonst shitty datensatz so eh

# Comments:

# Nur im ersten Fall ist die lineare Regressionslinie korrekt
# Im zweiten ist es queadratisch
# dritter fall hat starken ausreisse
# vierter Fall: wird durch einen einzigen Punkt bestimmt

# a & b sind fast identisch bei einzelnen -> reicht nicht nur diese anzuschauen
# graphisceh ueberpruefung wird also gebraucht
