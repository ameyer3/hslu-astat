inhalt <- c(71, 69, 67, 68, 73, 72, 71, 71, 68, 72, 69, 72)

sd <- 1.5
#should be 70 on average
#Verwerfungsbereich nach oben
#N ( mean(inahlt), sd^2/ 12)
#H0 = E_X = E_X0 = 70
#HA = E_X < 70

#Verwerfunsbereich = 69.28
qnorm(p=0.05, mean=70, sd=sd/sqrt(12))
mean(inhalt) #=70.25
pnorm(q=mean(inhalt), mean=70, sd=sd/sqrt(12))
#0.71 > alpha -> H0 vbehalten = 


# We believe: true mean is less than what they tell us
t.test(inhalt, mu=70, alternative="less")
# p kleineer als vorher, weil unsicherer wenn sd unbekannt

sd<-3
mean<-50
n<-16
gewicht <- c(46, 48, 52, 49, 46, 51, 52, 47, 49, 44, 48, 51, 49, 50, 53, 47)
#We believe true mean is less

#H0: E_x = 50 , Ha: E_X < 50
pnorm(q=mean(gewicht), mean=mean, sd=sd/sqrt(n)) #knapp nicht verworfen
pnorm(q=mean(gewicht), mean=mean, sd=sd/sqrt(100)) #sehr stark verworfen

t.test(gewicht, mu=mean, alternative="less") #H0 knapp verwerfen

# Zweiseitger z-test
qnorm(p=c(0.025, 0.975), mean=70, sd=sd/sqrt(12))
2* pnorm(q=mean(gewicht), mean=mean, sd=sd/sqrt(n)) 