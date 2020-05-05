getwd()
covidData<-read.csv("~/Desktop/DataAnalyticsSpring2020/term/04-28-2020.csv")
getwd()
install.packages("XQuartz")

View(covidData)
ncol(covidData)
summary(covidData)

attach(covidData) # sets the 'default' object
fix(covidData) # launches a simple data editor
covidData #prints out values covid042820




# Classification------Decision tree
# in order to grow our decision tree, we have to first load the rpart package.
# we can use the rpart() function
# specifying the model formula, data, and method parameters
library(rpart.plot)
library(rpart)
#dt_model = rpart(covidData$Mortality_Rate ~ covidData$Confirmed+covidData$People_Tested+covidData$Testing_Rate
 #                , data = covidData, method = "anova")
dt_model = rpart(covidData$Mortality_Rate ~ covidData$Confirmed+covidData$People_Tested
                 , data = covidData, method = "anova")
rpart.plot(dt_model)

#we will be using the covidDatasset
covidData
dim(covidData)






