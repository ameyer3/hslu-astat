diet <- read.csv("/home/alina/hslu/4.semester/ASTAT/sw02/Diet.csv")


# weight loss spalte hinzufuegen
diet$weight.loss <- diet$weight6weeks - diet$pre.weight

tapply(diet$weight.loss, diet$Diet, mean)

boxplot(weight.loss ~ Diet,
    data = diet,
    col = c("blue", "orange", "deeppink")
)
