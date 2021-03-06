# R for Everyone, ch.5, Advanced Data Structures
# data.frames
x <- 10:1
y <- -4:5
q <- c("Hockey","Football","Baseball","Curling","Rugby",
       "Lacrosse","Basketball","Tennis","Cricket","Soccer")
theDF <- data.frame(x,y,q)
theDF
class(theDF)
summary(theDF)
theDF <- data.frame(First=x,Second=y,Sport=q)
theDF
nrow(theDF)
ncol(theDF)
dim(theDF)
names(theDF)
names(theDF)[3]
rownames(theDF)
rownames(theDF) <- c("One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten")
rownames(theDF)
theDF
rownames(theDF) <- NULL
rownames(theDF)
theDF
head(theDF)
head(theDF, n=7)
head(theDF, 7)
tail(theDF)
tail(theDF, 7)
theDF
theDF[,3]
class(theDF[,3])
theDF[,"Sport"]
theDF$Sport
theDF["Sport"]
theDF[3,2]
theDF[3,2:3]
theDF[c(3,5),2]
theDF[c(3,5),2:3]
theDF[,2:3]
theDF[2,]
theDF[2:4,]
theDF[,c("First","Sport")]
# [ ] vs [[ ]]
theDF["Sport"]
class(theDF["Sport"])
theDF[["Sport"]]
class(theDF[["Sport"]])
theDF[,"Sport"]
class(theDF[,"Sport"])
theDF[,"Sport", drop=FALSE]
class(theDF[,"Sport", drop=FALSE])
theDF[,3, drop=FALSE]
class(theDF[,3, drop=FALSE])
# List
list1 <- list(1,2,3)
list1
list2 <- list(c(1,2,3))
list2
(list3 <- list(c(1,2,3), 3:7))
(list4 <- list(theDF, 1:10))
(list5 <- list(theDF, 1:10, list3))
names(list5)
names(list5) <- c("df","vec","lst")
names(list5)
(list6 <- list(datafr = theDF, vect = 1:10, lst = list3))
names(list6)
list5[[1]]
list5[["df"]]
list5[[1]]$Sport
list5[[1]][,"Second"]
list5[[1]][,"Second", drop = FALSE]
length(list5)
list5[[4]] <- 2
length(list5)
list5[["NewElement"]] <- 3:6
length(list5)
names(list5)
list5
# Matrices
A <- matrix(1:10, nrow = 5)
A
AA <- matrix(1:10, nrow = 5, byrow = TRUE)
AA
(B <- matrix(21:30, nrow = 5))
(C <- matrix(21:40, nrow = 2))
nrow(A)
ncol(A)
dim(A)
A + B
A * B
A == B
t(B)
A %*% t(B)
C
colnames(C) <- LETTERS[1:10]
C
LETTERS
letters
# Arrays
theArray <- array(1:12, dim = c(2,3,2))
theArray
theArray[1,,]
theArray[1,,1]
theArray[,,1]
