# load csv
data <- read.csv("/home/alina/hslu/4.semester/ASTAT/sw01/weather.csv")
print(data)

# zweite Spalte, dritte Zeile
print(data[2, 3])
# row 4
print(data[4, ])

print(data[, c("Luzern", "Basel")])

data1 <- data[, c("Luzern", "Basel")]
write.csv(data1, "/home/alina/hslu/4.semester/ASTAT/sw01/weather2.csv")

data2 <- read.csv("/home/alina/hslu/4.semester/ASTAT/sw01/weather2.csv")
data2

# name of 3 col
colnames(data)[3]
row.names(data)[3]

# rename column
colnames(data)[colnames(data) == "Basel"] <- "Genf"
data
# order rows ascending by sorted zurich
data3 <- data[order(data[, "Zurich"]), ]
data3
