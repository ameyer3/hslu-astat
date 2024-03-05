# Datensatz einlesen
income <- read.table("./sw03/income.dat", header = TRUE)
head(income)
par(mfrow = c(2, 1))

plot(income$Educ, income$Income2005)
abline(lm(Income2005 ~ Educ, data = income), col = "red", lwd = 3)

plot(income$AFQT, income$Income2005)
abline(lm(Income2005 ~ AFQT, data = income), col = "red")

# Find a & b
lm(Income2005 ~ Educ, data = income)

# = a = −40′200 und b = 6451
# pro schuljahr also 6451 mehr Dollar pro Jahr
