x1 <- c(80,93,100,82,90,99,81,96,94,93,97,95,100,85,86,87)
x2 <- c(8,9,10,12,11,8,8,10,12,11,13,11,8,12,9,12)
cost <- c(2256,2340,2426,2293,2330,2368,2250,2409,2364,2379,2440,2364,2404,2317,2309,2328)
length(x1)
length(x2)
length(cost)
d <- data.frame(x1,x2,cost)
dd <- lm(cost~x1+x2, data = d)
summary(dd)
