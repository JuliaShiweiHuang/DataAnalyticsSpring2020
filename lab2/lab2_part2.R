# Retrieve this dataset:
getwd()
read.csv("~/Desktop/DataAnalyticsSpring2020/lab2/dataset_multipleRegression.csv")->DATASET
attach(DATASET)
View(DATASET)
roll_predict<-lm(ROLL ~ UNEM + HGRAD)
roll_predict
UNEM=c(7)
HGRAD=c(90000)
INC=c(25000)
NEWROLL<-data.frame(UNEM,HGRAD)
NEWROLL1<-data.frame(UNEM, HGRAD, INC)
pROLL<-predict(roll_predict, NEWROLL, interval='prediction')
pROLL
#exercise2
install.packages("class")
library(class)
read.csv("~/Desktop/DataAnalyticsSpring2020/lab2/abalone.csv")->aba
attach(aba)
aba$Rings<-as.numeric(aba$Rings)
aba$Sex<-NULL
inddd<-sample(2,nrow(aba), replace=TRUE, prob = c(0.8, 0.2))
KNNtrain<-aba[ind==1,]
KNNtest<-aba[ind==2,]
help("knn")
sqrt(2918)
#knn model
library(class)
KNNpred<-knn(train=KNNtrain[1:7],test=KNNtest[1:7],cl=KNNtrain$Rings,k=55)
KNNpred
table(KNNpred)


#exercise3
library(ggplot2)
head(iris)
sapply(iris[,-5],var)
set.seed(200)
k.max<-10
wss<-sapply(1:k.max,function(k){kmeans(iris[,3:4],k,nstart=20,iter.max=1000)$tot.withinss})
wss
plot(1:k.max,wss,type="b",xlab = "Number of clusters(k)",ylab="within cluster sum of squares")
icluster<-kmeans(iris[,3:4],3,nstart=20)
table(icluster$cluster,iris$Species)









