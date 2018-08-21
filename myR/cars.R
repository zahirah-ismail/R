library(MASS)
library(ISLR)
names(cars)
fix(cars)
plot(speed~dist,cars)
fitcars=lm(speed~dist, data=cars)
fitcars
summary(cars)
confint(fitcars)
abline(fitcars,col="green")
predict(fitcars,data.frame(dist=c(23)), interval="confidence")

