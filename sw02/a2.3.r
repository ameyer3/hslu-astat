data <- read.csv("/home/alina/hslu/4.semester/ASTAT/sw02/mannfrau.csv")

difference <- data["alter.mann"] - data["alter.frau"]

boxplot(difference)

# median ca 2.5
# -> haelfte ist mehr als 2.5 und haelfte ist weniger als 5

# unteres quartil: 0
# -> 25% ist frau aelter

# oberes quartil: 4.5
# -> 25% ist mann mehr als 4.5 Jahre aelter

# -> haelfte ist zwischen 0 und 4.5 jahren

# max: 20
# min -10 = Frau ist 10 Jahre aelter
