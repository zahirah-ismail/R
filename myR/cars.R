library(MASS)
library(ISLR)
##install.packages("dplyr")
library("dplyr")
my_data = cars
my_data
fix(cars)
plot(speed~dist,cars)
fitcars=lm(speed~dist, data=cars)
fitcars
summary(cars)
boxplot(speed~dist,data=cars, main="distance vs speed in cars", xlab="Distance" ,ylab="speed")
confint(fitcars)
abline(fitcars,col="green")
predict(fitcars,data.frame(dist=c(23)), interval="confidence")
##mutate(my_data ,
   ##    time = dist/speed
       ##)
##transmute(mydata,
          
         ## )

time <- data.frame(dist/speed)
boxplot(dist~time,data=cars, main="distance vs speed in cars", xlab="Distance" ,ylab="speed")
