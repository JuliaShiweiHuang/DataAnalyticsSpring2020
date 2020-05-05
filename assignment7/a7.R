getwd()
read.csv("~/Desktop/DataAnalyticsSpring2020/assignment7/winequality-red.csv")->winered
getwd()

View(winered)
ncol(winered)

winered<-read.csv("~/Desktop/DataAnalyticsSpring2020/assignment7/winequality-red.csv", sep=";")

View(winered)
summary(winered)

str(winered)
summary(winered)

library(ggplot2)
library(dplyr)

testalcohol<-ggplot(winered, aes(x = alcohol, fill = alcohol)) + geom_bar()
testalcohol

testPh <-ggplot(winered, aes(x = pH, fill = pH)) + geom_bar()
testPh


testCitricAcid <-ggplot(winered, aes(x = citric.acid, fill = citric.acid)) + geom_bar()
testCitricAcid


testAlcohol<-ggplot(winered, aes(x = alcohol, fill = alcohol)) + geom_bar()
testAlcohol


as.matrix(colSums(is.na(winered)))


range(winered$pH)
range(winered$citric.acid)
range(winered$volatile.acidity)
range(winered$chlorides)

ggplot(winered, aes_string(y=winered$pH, x=as.factor(winered$citric.acid)),)+
  geom_boxplot() + xlab('citric.acid') + ylab('pH')


#testing first model:
library(caTools)
set.seed(500)
split=sample.split(winered,SplitRatio=0.8)
traindata=subset(winered,split==TRUE)
testdata=subset(winered,split==FALSE)
regr=lm(formula=pH~.,data=traindata)
summary(regr)

regr=lm(formula=pH~volatile.acidity+citric.acid,data=traindata)
summary(regr)

preddata=predict(regr,newdata = testdata)

preddata


library(ggplot2)


#second model:
library(randomForest)
require(caTools)
modeldata<-winered
set.seed(1234)
train_index = sample(1:nrow(modeldata),0.8*nrow(modeldata))
train=modeldata[train_index,]
test=modeldata[-train_index,]


set.seed(1234)
model_tree(data)<-c("pH", "citric.acid")
head(data)
summary(model_tree)


#third model: decision tree
library(rpart)
model<-rpart(fixed.acidity~pH+citric.acid, data=traindata, method="class")


model<-rpart(pH~fixed.acidity+citric.acid, data=traindata, method="class")


model<-rpart(fixed.acidity~pH+citric.acid+density, data=traindata, method="class")

