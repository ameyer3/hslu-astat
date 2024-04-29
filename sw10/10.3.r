# ungepaart, weil keine direkte Zuordnung

# Nullhypothese: gleiche Kieferlaenge
# Alternativhypothese m != f
m <- c(120, 107, 110, 116, 114, 111, 113, 117, 114, 112)
f <- c(110, 111, 107, 108, 110, 105, 107, 106, 111, 111)
t.test(m, f, paired = FALSE, alternative = "two.sided")
# p=0.00336 < alpha, Nullhypothese verwerfen

# Wilcoxon fuer nicht normalverteilte Daten
wilcox.test(m, f, paired = F, alterantive = "two.sided")
# p = 0.004845 < alpha, H0 verwerfen

# Wilcox vorziehen: nimm Normalverteilung nicht an
# (stark unterschiedliche Standardabweichungen sind problematisch generell)
