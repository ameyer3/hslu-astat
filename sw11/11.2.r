library("MASS")
head(Boston)
# medv mit 13 Praedikatoren
# ?Boston
# Spalten:
colnames(Boston)
attach(Boston)

# Ziel: medv, Praedikator: lstat
# regressionsmodell: medv = beta0 + beta1 * lstat
summary(lm(medv ~ lstat, data = Boston))
# p value sehr klein, also hat lstat einfluss auf medv

# welche andere infos gibt es in lm?
names(lm(medv ~ lstat, data = Boston))

coef(lm(medv ~ lstat, data = Boston))
# -> 34.5 (intercept)
# -> -0.95 (lstat)
# -> medv = 34.5 - 0.95*lstat
# wenn 0% lower status ppl -> 34500.-
# value get less by 950$ the more lower status people there are (1% more)

# Vertrauensinterval
confint(lm(medv ~ lstat, data = Boston))
# zu 95% ist medv zwischen 33.44 und 35.66, wenn keine lower statuses -> achsenabschnitt
# steigung ist zu 95% zwischen -1.026 & -0.873

# plot
plot(Boston$medv ~ Boston$lstat,
    col = "blue",
    lty = 1, # linetype
    pch = 16, # dots
    main = "Hausvalue",
    xlab = "lower status population %",
    ylab = "Value"
)
abline(lm(medv ~ lstat, data = Boston), col = "orange")

# r^2
# =0.5441, also zu 54% kann der Wert von mdev mit lstat erklaert werden
# 54% der varianz kann durch das Modell (Regressionsgerade) erklaert weredn
# not too good
