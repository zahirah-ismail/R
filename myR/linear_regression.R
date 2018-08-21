library (MASS)
library (ISLR)
## Simple linear reagression
names(Boston)
?Boston
plot(medv~lstat,Boston)
fit1 = lm (medv~lstat,data=Boston)
summary(fit1)
abline(fit1,col="red")
names(fit1)
confint(fit1)
predict(fit1,data.frame(lstat=c(5,10,15)), interval ="confidence")
### Multiple linear regression
fit2=lm(medv~lstat+age,data=Boston)
summary(fit2)
fit3=lm(medv~.,Boston)
summary(fit3)
par(mfrow=c(2,2))
plot(fit3)