# To run: ctrl + shift + enter
# Create vektor
x <- c(4, 2, 1, 3, 3, 5, 7)
# give 3rd element
x[3]
# give first and fourth value
b <- c(x[1], x[4])
b
# get length or vektor
length(x)
# each element plus 2
x + 2
sum(x)
# sum of every (element + 2)
sum(x + 2)
# for each element bool
x <= 3
# prints all elements that are <= 3
x[x <= 3]
# gives sorted vektor
sort(x)
# sorts vektor and then gives their indeces; sort for nD dataframes
order(x)
# replace 4th element with 8
x[4] <- 8

#### Aufgabe 1.3 ####
fahrenheit <- c(51.9, 51.8, 51.9, 53)
celsius <- (5 / 9) * (fahrenheit - 32)
celsius

other_fahrenheit <- c(48, 48.2, 48, 48.7)
difference <- fahrenheit - other_fahrenheit
difference

#### Aufgabe 1.4 ####
gewicht <- c(60, 72, 57, 90, 95, 72)
groesse <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
bmi <- gewicht / (groesse^2)
bmi

#### Aufgabe 1.5 #### get help
# ?order
# help(order)
# ?seq
seq(from = 3, to = 10, by = 2)
x <- c(4, 10, 3, NA, NA, 1, 8)
# mittelwert is no NA
mean(x)
# to remove NA
mean(x, na.rm = TRUE)
# NA is ignored
sort(x)
# NA comes last
sort(x, na.last = TRUE)
# descending instead of ascending (NA still last)
sort(x, na.last = TRUE, decreasing = TRUE)

# NA is included and last by default
order(x)
# They are now first
order(x, na.last = FALSE)
# descending instead of ascending (NA still last)
order(x, decreasing = TRUE)

# PLOTS
z <- c(4, 2, 8, 9, 7, 5, 2, 1)
plot(z,
    type = "l", # l=line (s(stairs), p(point=default),
    # b(both), h(histogram), o(both overplotted))
    col = "blue",
    lty = 2, # linetype, here: dashed lined
    main = "Haupttitel",
    xlab = "Ein paar Zahlen",
    ylab = "Andere Zahlen"
)
# durchgezogen
abline(v = 3, col = "green", lty = 1)
# gepunktet
abline(h = 4, col = "red", lty = 3)
# gestrichelt lang
abline(1, 2, col = "brown", lty = 5)
