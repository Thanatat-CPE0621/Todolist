# anova
a1 <- c(2,3,7,2,6)
a2 <- c(10,8,7,5,10)
a3 <- c(10,13,14,13,15)
d <- data.frame(a1,a2,a3)
d
dd <- stack(d)
aaa <- aov(values~ind,data=dd)
aaa
summary(aaa)
tk <- TukeyHSD(aaa)
tk
plot(tk)
