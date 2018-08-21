library(class)
?knn
attach(Smarket)
Xlag=cbind(Lag1,Lag2)## makes a matrix col
train=Year<2005 ##indicator var
knn.pred=knn(Xlag[train,],Xlag[!train,],Direction[train],k=1) ##using training ob as well as !train , res is direction and 1 nearest class 
table(knn.pred,Direction[!train])
mean(knn.pred==Direction[!train]) ## receive a confusion matrix
