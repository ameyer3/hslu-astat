# positiv wenn luegen -> gibt an hat gelogen wenn gelogen
p.notW <- 0.88
# not positiv wenn Wahrheit
notp.w <- 0.86
# wie viele die Wahrheit sagen
w <- 0.99

# b) ist positiv, wie wahrscheinlich dass gelogen?
# wenn positiv, wie wahrsch dass gelogen?
# notW | p
# # Bayes: P(K|T) = (K intersect T) / P(T) = (P(T|K)*P(K)) / P(T)
notW <- 1 - w
p.w <- 1 - notp.w
notW <- 1 - w
p <- w * p.w + notW * p.notW
notW.p <- (p.notW * notW) / p
notW.p # 0.0597

# sehr wahrscheinlich zeigt falsches Res an
# sagt er luegt: 6% dass es luegt
# 94% aller positiver tests sagen sie die Wahrheit
