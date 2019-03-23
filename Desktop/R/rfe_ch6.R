# R for Everyone, ch 6, Reading Data into R

#6.1 Reading CSV

theURL <- "http://www.jaredlander.com/data/Tomato%20First.csv"
tomato <- read.table(file=theURL, header = TRUE, sep=",")
head(tomato)

#6.5 R Binary Files
save (tomato, file = "tomato.rdata")
dir()
rm(tomato)
head(tomato)
load("tomato.rdata")
head(tomato)

n<-20
r<-1:10
w<-data.frame(n,r)
n
r
w
save(n,r,w,file="multiple.rdata")
rm(n,r,w)
n
r
w
load("multiple.rdata")
n
r
w

