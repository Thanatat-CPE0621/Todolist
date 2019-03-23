# Linear_Reg.R
# Linear Regression
setwd("C:/Users/trasa/Dropbox/work/courses/R_teaching_resources/R_code/data")

# 3 ways to import data
Data1 <- read.table(file="LungCapData.txt", header = TRUE, sep=",")
Data2 <- read.table(file.choose(), header = TRUE, sep=",")
# use "import dataset" tab on the right --> from text (base) ---> import as LungCapData
head(Data1)
head(Data2)
head(LungCapData)
names(LungCapData)
class(Age) # err msg shown
attach(Data1)
class(Age)
class(LungCap)
plot(Age, LungCap, main = "Scatterplot")
cor(Age, LungCap)
?lm
mod <- lm(LungCap ~ Age)
summary(mod)
# F-test in the last line for all coef are 0
attributes(mod)
mod$coefficients
coef(mod)
plot(Age, LungCap, main = "Scatterplot")
abline(mod)
abline(mod, col="red", lwd=3)
confint(mod)
confint(mod, level = 0.99)
summary(mod)
anova(mod) # for the F-test in the last line of summary
# Residual Standard Error in Summary is sqrt(Mean Sq of Residual in Anova)
plot(mod) #checking validity   --> Regression diagnostic
par(mfrow=c(2,2))
plot(mod)
par(mfrow=c(1,1))

#try with something nonlinear!

# multiple linear regression
model1 <- lm(LungCap ~ Age + Height)
summary(model1)
# f-test for all coef are 0 (beta_age and beta_height are 0)

cor(Age, Height, method="pearson")
confint(model1, level = 0.95)

model2 <- lm(LungCap ~ Age + Smoke)
summary(model2)
plot(Age[Smoke=="no"],LungCap[Smoke=="no"], col="blue", ylim=c(0,15),
     xlab="Age",ylab="LungCap", main = "LungCap vs. Age,Smoke")
points(Age[Smoke=="yes"], LungCap[Smoke=="yes"],col="red", pch = 16)
legend(3,15, legend = c("NonSmoker","Smoker"), col=c("blue","red"),
       pch=c(1,16), bty="n")
abline(a=1.08, b=0.555,col="blue", lwd=3)
abline(a=0.431, b=0.555,col="red", lwd=3)
# parallel lines => no interaction between age and smoking

model3 <- lm(LungCap ~ Age*Smoke)
coef(model3)
model4 <- lm(LungCap ~ Age+Smoke+Age:Smoke)
coef(model4)
summary(model4)
# show regression equations for smoker and non-smoker
plot(Age[Smoke=="no"],LungCap[Smoke=="no"], col="blue", ylim=c(0,15),
     xlab="Age",ylab="LungCap", main = "LungCap vs. Age,Smoke")
points(Age[Smoke=="yes"], LungCap[Smoke=="yes"],col="red", pch = 16)
legend(3,15, legend = c("NonSmoker","Smoker"), col=c("blue","red"),
       pch=c(1,16), bty="n")
abline(a=1.052, b=0.558,col="blue", lwd=3)
abline(a=1.278, b=0.498,col="red", lwd=3)
# Questions: should we include the interaction term in our model?
# (1) making any senses? (2) statistically significant?

# in this case, we should not include the interaction term

model5 <- lm(LungCap ~ Age*Gender)
coef(model5)
summary(model5)
model6 <- lm(LungCap ~ Age*Gender*Smoke)
coef(model6)
summary(model6)
model7 <- lm(LungCap ~ Age*Gender*Smoke*Caesarean)
coef(model7)
summary(model7)
model8 <- lm(LungCap ~ Age+Gender+Gender:Smoke+Age:Gender:Smoke)
summary(model8)

model9 <- lm(LungCap ~ Age*Height*Gender*Smoke*Caesarean)
summary(model9)

model10 <- lm(LungCap ~ Age + Height + Smoke + Gender + Caesarean)
summary(model10)
plot(model10)

