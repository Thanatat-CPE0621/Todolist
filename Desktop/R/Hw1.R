randomexpo<-rexp(n=5000,rate=1.5)
randomDensityexpo<-dexp(randomexpo)
neg1Seqexpo <- seq(from=1, to = 2, by=0.1)
lessThanNegexpo1 <- data.frame(x=neg1Seqexpo,y=dexp(neg1Seqexpo))
lessThanNegexpo1 <- rbind(c(min(lessThanNegexpo1$x), 0),
                          lessThanNegexpo1,
                          c(max(lessThanNegexpo1$x),0))
require(ggplot2)
ggplot(data.frame(x=randomexpo,y=randomDensityexpo),aes(x=x,y=y) ) +
  geom_polygon(data=lessThanNegexpo1, aes(x=x,y=y),fill = "grey50")+geom_line()+
  labs(title = "Thanatat Voraveeravong & 590610621",x="X", y="Density")

pexp(2,rate = 1.5) - pexp(1,rate = 1.5)