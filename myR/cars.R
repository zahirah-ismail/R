library(MASS)
library(ISLR)
##install.packages("dplyr")
##library("dplyr")

test = cars[,]
test
test$new_col = test$dist / test$speed 
head(test)

fix(cars)
plot(dist~test$new_col,cars)
fitcars=lm(dist~test$new_col, data=cars)
fitcars
summary(cars)
boxplot(dist~test$new_col,data=cars, main="distance vs speed in cars", xlab="Distance" ,ylab="speed")
confint(fitcars)
abline(fitcars,col="green")
predict(fitcars,data.frame(test$new_col = c(3)), interval="confidence")




