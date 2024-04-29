zh <- c(16.3, 12.7, 14.0, 53.3, 117, 62.6, 27.6)
basel <- c(10.4, 8.91, 11.7, 29.9, 46.3, 25.0, 29.4)

# ist normalverteilt

# Mittelwerte
mean(zh - basel) # 20.3
# Standardabweichung
sd(zh - basel) # 26.3

# gepaarte Stichproben: gleiche Tage einander zuordnen

# H0: zh = basel
# Ha: zh > basel

# Test (t-test, weil normalverteilt)
alpha <- 0.05
t.test(zh, basel, paired = TRUE, alternative = "greater")
# p = 0.04364 < alpha, Null wird verworfen

# 95% Vertrauensinterval: 0.974 - unendlich
# = zu 95% ist die differenz minimum 0.974

# Test ohne normalverteilung
wilcox.test(zh, basel, paired = TRUE, alternative = "greater")
# 0.01563 < alpha
