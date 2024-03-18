# zwei wurfel werfen, welche augenzahlen gibt es?

x <- c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
p <- c(1 / 36, 2 / 36, 3 / 36, 4 / 36, 5 / 36, 6 / 36, 5 / 36, 4 / 36, 3 / 36, 2 / 36, 1 / 36)

# Erwartungswert
E_X <- sum(x * p)
E_X
# = wir erwarten, dass durchschnittlich augensumme 7 geworfen wird

# Standarabweichung
var_X <- sum((x - E_X)^2 * p)
sd_X <- sqrt(var_X)
sd_X
# = Abweichung "durchschnittlich" 2.42 von 7
