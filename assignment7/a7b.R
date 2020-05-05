getwd()
read.csv("~/Desktop/DataAnalyticsSpring2020/assignment7/winequality-white.csv")->winewhite
getwd()

View(winewhite)
ncol(winewhite)


winewhite<-read.csv("~/Desktop/DataAnalyticsSpring2020/assignment7/winequality-white.csv", sep=";")
summary(winewhite)
str(winewhite)


library(ggplot2)
library(dplyr)


testalcohol<-ggplot(winewhite, aes(x = alcohol, fill = alcohol)) + geom_bar()
testalcohol

testPh <-ggplot(winewhite, aes(x = pH, fill = pH)) + geom_bar()
testPh


testCitricAcid <-ggplot(winewhite, aes(x = citric.acid, fill = citric.acid)) + geom_bar()
testCitricAcid


testAlcohol<-ggplot(winewhite, aes(x = alcohol, fill = alcohol)) + geom_bar()
testAlcohol


as.matrix(colSums(is.na(winewhite)))


range(winewhite$pH)
range(winewhite$citric.acid)
range(winewhite$volatile.acidity)
range(winewhite$chlorides)

ggplot(winewhite, aes_string(y=winewhite$pH, x=as.factor(winewhite$citric.acid)),)+
  geom_boxplot() + xlab('citric.acid') + ylab('pH')



#testing first model:
library(caTools)
set.seed(500)
split=sample.split(winewhite,SplitRatio=0.8)
traindata=subset(winewhite,split==TRUE)
testdata=subset(winewhite,split==FALSE)
regr=lm(formula=pH~.,data=traindata)
summary(regr)

regr=lm(formula=pH~volatile.acidity+citric.acid,data=traindata)
summary(regr)

preddata=predict(regr,newdata = testdata)

preddata



#third model: decision tree
library(rpart)
model<-rpart(fixed.acidity~pH+citric.acid, data=traindata, method="class")


model<-rpart(pH~fixed.acidity+citric.acid, data=traindata, method="class")


model<-rpart(fixed.acidity~pH+citric.acid+density, data=traindata, method="class")


#second model:
library(randomForest)
require(caTools)
modeldata<-winewhite
set.seed(1234)
train_index = sample(1:nrow(modeldata),0.8*nrow(modeldata))
train=modeldata[train_index,]
test=modeldata[-train_index,]


set.seed(1234)
model_tree(data)<-c("pH", "citric.acid")
head(data)
summary(model_tree)


