t.x <- seq(-10, 10, 1)
t.x1 <- 0:10

t.y <- t.x^2
t.y1 <- t.x1^2
par(mfrow = c(2, 1))
plot(t.y ~ t.x,
    main = cor(t.y, t.x)
)
# = 0 weil kann keine quadratische sehen, nur linear
# summetrisch zur y-achse
cor(t.y, t.x)
plot(t.y1 ~ t.x1,
    main = cor(t.y1, t.x1)
)
# 0.96 weil ist fast auf einer geraden an diesem Punkt der quadratischen
# x & y steigen monoton
