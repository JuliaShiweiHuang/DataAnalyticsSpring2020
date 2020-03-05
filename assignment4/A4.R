# Retrieve this dataset:
getwd()
read.csv("~/Desktop/DataAnalyticsSpring2020/assignment4/rollingsales_brooklyn.csv")-> brooklynData
summary(brooklynData)
colnames(brooklynData)
str(brooklynData)
colnames(brooklynData)
brooklynData
unique(brooklynData$Zipcode)
unique(brooklynData$BLOCK)
unique(brooklynData$SALE)

#renaming columns
colnames(brooklynData)<-c("BOROUGH","NEIGHBORHOOD","BUILDING CLASS CATEGORY","TAX CLASS AT PRESENT","BLOCK","LOT","EASE-MENT","BUILDING CLASS AT PRESENT","ADDRESS","APARTMENT NUMBER","ZIP CODE","RESIDENTIAL UNITS","COMMERCIAL UNITS","TOTAL UNITS","LAND SQUARE FEET","GROSS SQUARE FEET","YEAR BUILT","TAX CLASS AT TIME OF SALE","BUILDING CLASS AT TIME OF SALE","SALE PRICE","SALE DATE")
unique(brooklynData$NEIGHBORHOOD)
colnames(brooklynData)
str(brooklynData)
brooklynData

#get unique values from the neighborhood
unique(brooklynData$NEIGHBORHOOD)
#data cleaning
newdata<-brooklynData[,-2]
newdata


unique(brooklynData$`TAX CLASS AT PRESENT`)
#data cleaning
newdata<-brooklynData[,-2]
newdata


newdata<-newdata[-1,]
View(newdata)

newdata$`SALE PRICE`=as.numeric(newdata$`SALE PRICE`)
newdata


cleandata<-newdata

install.packages("caTools")
set.seed(500)
library(caTools)
split = sample.split(cleandata$`SALE PRICE`, SplitRatio = 0.7)
training_set=subset(cleandata,split==TRUE)
test_set=subset(cleandata,split==FALSE)

regressor=lm(formula=training_set$`SALE PRICE`~., data=training_set)




