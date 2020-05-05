rm(list=ls())
covidata <- read.csv("~/Desktop/DataAnalyticsSpring2020/term/04-28-2020-china.csv")
summary(covidata)
sum(covidata$deadCount)
sum(covidata$confirmedCount)
sum(covidata$curedCount)

Morality<-covidata$deadCount/covidata$confirmedCount
Morality<-as.data.frame(Morality)

data<-cbind(covidata$confirmedCount,covidata$suspectedCount,
            covidata$curedCount,Morality)
names(data)<-c("Confirmed","Suspected","Current","Morality")

na.omit(data)
# get rid of useless values
data<-data[-c(17,65,82,117,119,163,249,377,430),]
mean(data$Morality)

na.omit(data)
lmMortalityRate<-lm(data$Morality~ data$Confirmed + data$Suspected + data$Current)
lmMortalityRate
summary(lmMortalityRate)


Confirmed<-c(seq(1,469,1))
Suspected<-c(seq(1,469,1))
Current<-c(seq(1,469,1))

NEW<-data.frame(Confirmed,Suspected,Current)
pred<-predict(lmMortalityRate,newdata = NEW, interval="prediction")


A<-data$Confirmed
A[A>1500 | A<200]<-NA
B<-data$Current
B[B>1500| B<200]<-NA
boxplot(A,B)
summary(A)
hist(B)







