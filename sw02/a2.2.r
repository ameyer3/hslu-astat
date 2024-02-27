grades <- c(
    4.2, 2.3, 5.6, 4.5,
    4.8, 3.9, 5.9, 2.4, 5.9, 6, 4,
    3.7, 5, 5.2, 4.5, 3.6, 5, 6, 2.8,
    3.3, 5.5, 4.2, 4.9, 5.1
)

mean(grades)
median(grades)

# median bleibt gleich, aber mittelwert ist stark anders
new_grades <- sort(grades)
length(new_grades)
new_grades[c(12, 13)] # =median
new_grades[c(9, 10, 11)] <- 1 # change the highest
# number of the ones smaller than median

mean(new_grades)
median(new_grades)

boxplot(grades, new_grades,
    main = "Grades in original form",
    xlab = "Grades",
    at = c(1, 2),
    names = c("Origianl Grades", "Changed grades")
)
