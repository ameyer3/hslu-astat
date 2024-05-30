set.seed(4)
v <- 20
d <- 500
df <- matrix(rnorm(v * d), nrow = d)
# head(df)
df <- data.frame(df)
Y <- rnorm(d)
# Y
df$Y <- Y
fit <- lm(Y ~ ., , data = df)
summary(fit)