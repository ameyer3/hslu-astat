# einseitig
# H0: x = 0
# Ha: x > 0
# alpha = 0.05

# Mittelwert is > 0, trotzdem wird H0 nicht verworfen
# Mittelwert also zwischen 0 und unter 0.05% (Verwerfungsbereich)

# a) Man verwirft H0 für kein Niveau α < 0.05
# wenn aplha 0-0.05 ist, ist Verwerfungsbereich immer kleiner
# als 0.05, also liegt der Mittelwert nie dort
# -> richtig

# b) Es gibt ein Niveau α < 1, bei dem man H0 verwirft.
# ja, alpha wird groesser bis zu 99.999..%
# irgendwo dort is Mittelwert -> verwerfen

# c) Der p-Wert ist strikt kleiner als 0.5.
# p-Wert 0.5 -> alles rechts von 0 (H0),
# dort ist fix Mittelwert, p darf also nicht so gross sein
# -> richtig

# d) Führt man statt eines einseitigen einen zweiseitigen Test zum Niveau 0.05 durch,
# verwirft man H0 nicht.
# richtig: zweiseitig = links 0.0025 und rechts 0.025
# -> verwerfungsbreich kleiner, also nicht verworfen

# e) Wenn man die Daten immer öfter kopiert (d. h., man betrachtet
# jeden Datenpunkt k-Mal, so dass man insgesamt k · n Datenpunkte erhält),
# verwirft man H0 für ein grosses k beim Niveau 0.05.

# Mittelwert bleibt, aber Standardabweichung sinkt
# Glocke wird schmaler und irgendwann so schmall dass Mittelwert
# im Verwerfungsbereich drin ist
