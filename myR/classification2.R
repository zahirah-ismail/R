require(ISLR)
require(MASS)

##Linear Discriminant Analysis
## using stock market data and the resp is the direction the martket took on a particular day and use the returns on the previous two days
?lda
lda.fit=lda(Direction~Lag1+Lag2,data=Smarket,subset = Year<2005)
lda.fit
plot(lda.fit)
Smarket.2005=subset(Smarket,Year==2005)
lda.pred=predict(lda.fit,Smarket.2005)
lda.pred[1:5,]
##list of variables
class(lda.pred)
## put into a dataframe 
data.frame(lda.pred)[1:5,]
table(lda.pred$class,Smarket.2005$Direction)
mean(lda.pred$class==Smarket.2005$Direction)


