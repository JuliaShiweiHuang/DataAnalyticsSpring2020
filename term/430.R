# Regression for the Confirmed Cases Covid19 
rm(list=ls())
coviddata<-read.csv("~/Desktop/DataAnalyticsSpring2020/term/04-28-2020.csv")

summary(coviddata)
hist(coviddata$Deaths)


coviddataChina<-read.csv("~/Desktop/DataAnalyticsSpring2020/term/04-28-2020-china.csv")

data<-na.omit(coviddata)
data<-data[-c(2,7,12,20),] 



# linear model
# predict the mortality rate based on number of deaths, number of recovered people
# and number of people who are still hospitalized;
lmMortalityRate<-lm(data$Mortality_Rate~data$Deaths+data$Recovered+
                      data$People_Hospitalized)

lmMortalityRateChina<-lm(coviddataChina$deadCount~coviddataChina$deadCount+data$curedCount+
                      data$confirmedCount)



lmMortalityRate
summary(lmMortalityRate)
