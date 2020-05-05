covidData<-read.csv("~/Desktop/DataAnalyticsSpring2020/term/04-28-2020.csv")


# Classification------Decision tree
library(rpart.plot)
library(rpart)

# I want to use the confirmed, tested, to predict the mortality rate
# 
dt_model = rpart(covidData$Lat ~ covidData$Confirmed+covidData$Mortality_Rate
                 , data = covidData, method = "anova")
#dt_model = rpart(covidData$Mortality_Rate ~ covidData$Confirmed+covidData$People_Tested
#                 , data = covidData, method = "anova")
dt_model # get the result of my dt_model
# in order to visualize my data
# I need to use rpart.plot method
# This is the decision tree analysis;
# in this chart, we have 7 nodes of a decision tree
# in each tree, we have yes, no and two numbers on two sides
# yes and no is the activity take the activity
# the one on the right is the one take the other activity
# for 100% people who are confirmed with coronavirus; 
# 
rpart.plot(dt_model)
#小于纬度37，
#纬度越大 testing rate 越高
# testing小于1041； 有12%的可能；88%的可能性是testing rate大于1000
# statement就是高于纬度45的就没有2600；
# 41要3600； 41 大约是纽约


dt_model = rpart(covidData$Lat ~ covidData$Confirmed
                 , data = covidData, method = "anova")
rpart.plot(dt_model)

