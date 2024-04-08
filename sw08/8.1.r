avg <- 8.2
std.abw <- 6
# Anzahl Passagiere
n <- 36

# Verteilung bei 36 Passagieren:
n1 <- 8.2
n2 <- std.abw^2 / n

# a) P(x<10) durchschnittlich 10min bei 36 Passag.
pnorm(q = 10, mean = avg, sd = n2) # 96,41% haben weniger als 10min

# b) warten zwischen 5 und 10 min durchschnitt bei 36 Passag.
# P(5<=X<=10)
pnorm(q = 10, mean = avg, sd = n2) - pnorm(q = 5, mean = avg, sd = sqrt(n2))
# 96.34%

# c) mehr als 20 Minuten durchschnittlich
1 - pnorm(q = 20, mean = avg, sd = sqrt(n2))
# = 0 aka sehr sehr klein

# d) wieso geht es manchmal 20+, auch wenn wahrsch so klein?
# c = 36 Personen warten durchschnittlich mehr als 20min
# unwahrscheinlicher dass viele Menschen 20+ warten muessen,
# als dass nur 1 20min+ wartet

# e) i.i.d-Annahme?
# = independent, identically distributed -> unabhaengig und gleichverteilt
# kann i.i.d sein, wenn an allen Zeiten, allen Schalten einige Passagiere ausgewaehlt werden
# ist nicht i.i.d wenn ein Schalter waehlen und dort lange Schlange -> alle warten deswegen lange
# nicht i.i.d an bestimmter Tageszeit, wo lange Wartezeiten
