library(MASS)
library(ISLR)
names(cars)
fix(cars)
plot(speed~dist,cars)
fitcars=lm(speed~dist, data=cars)
fitcars
summary(cars)
boxplot(speed~dist,data=cars, main="distance vs speed in cars", xlab="Distance" ,ylab="speed")
confint(fitcars)
abline(fitcars,col="green")
predict(fitcars,data.frame(dist=c(23)), interval="confidence")

