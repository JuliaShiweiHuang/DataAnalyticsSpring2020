# Retrieve this dataset:
getwd()
read.csv("~/Desktop/DataAnalyticsSpring2020/assignment3/nyt8.csv")->nyt8
read.csv("~/Desktop/DataAnalyticsSpring2020/assignment3/nyt10.csv")->nyt10
read.csv("~/Desktop/DataAnalyticsSpring2020/assignment3/nyt15.csv")->nyt15
read.csv("~/Desktop/DataAnalyticsSpring2020/assignment3/nyt12.csv")->nyt12
read.csv("~/Desktop/DataAnalyticsSpring2020/assignment3/nyt25.csv")->nyt25
attach(nyt8)
attach(nyt10)
attach(nyt15)
attach(nyt12)
attach(nyt25)

boxplot(nyt8$Age,nyt10$Age,nyt15$Age,nyt12$Age,nyt25$Age,names = c("nyt8"," nyt10","nyt15","nyt12","nyt25"), ylab="AGE")
boxplot(nyt8$Impressions,nyt10$Impressions,nyt15$Impressions,nyt12$Impressions,nyt25$Impressions,names = c("nyt8"," nyt10", "nyt15","nyt12","nyt25"),ylab="IMPRESSIONS")

par(mfrow=c(2,3))
hist(nyt8$Age, breaks=10,main="NYT 8 AGE")
hist(nyt10$Age, breaks=10,main="NYT 10 AGE")
hist(nyt15$Age, breaks=10,main="NYT 15 AGE")
hist(nyt12$Age, breaks=10,main="NYT 12 AGE")
hist(nyt25$Age, breaks=10,main="NYT 25 AGE")

par(mfrow=c(2,3))
hist(nyt8$Impressions, breaks=10,main="NYT 8 Impressions")
hist(nyt10$Impressions, breaks=10,main="NYT 10 Impressions")
hist(nyt15$Impressions, breaks=10,main="NYT 15 Impressions")
hist(nyt12$Impressions, breaks=10,main="NYT 12 Impressions")
hist(nyt25$Impressions, breaks=10,main="NYT 25 Impressions")

par(mfrow=c(2,3))
plot(ecdf(nyt8$Age),main="NYT 8 AGE")
plot(ecdf(nyt10$Age),main="NYT 10 AGE")
plot(ecdf(nyt15$Age),main="NYT 15 AGE")
plot(ecdf(nyt12$Age),main="NYT 12 AGE")
plot(ecdf(nyt25$Age),main="NYT 25 AGE")

par(mfrow=c(2,3))
plot(ecdf(nyt8$Impressions),main="NYT 8 Impressions")
plot(ecdf(nyt10$Impressions),main="NYT 10 Impressions")
plot(ecdf(nyt15$Impressions),main="NYT 15 Impressions")
plot(ecdf(nyt12$Impressions),main="NYT 12 Impressions")
plot(ecdf(nyt25$Impressions),main="NYT 25 Impressions")

cor.test(nyt8$Age,nyt8$Impressions)
cor.test(nyt10$Age,nyt10$Impressions)
cor.test(nyt15$Age,nyt15$Impressions)
cor.test(nyt12$Age,nyt12$Impressions)
cor.test(nyt25$Age,nyt25$Impressions)

par(mfrow=c(3,2))
hist(nyt8$Age, breaks=10,main="NYT 8 AGE")
hist(nyt10$Age, breaks=10,main="NYT 10 AGE")
hist(nyt8$Impressions, breaks=10,main="NYT 8 Impressions")
hist(nyt10$Impressions, breaks=10,main="NYT 10 Impressions")
hist(nyt8$Clicks, breaks=15,main="NYT 8 Clicks")
hist(nyt10$Clicks, breaks=15,main="NYT 10 CLicks")

par(mfrow=c(3,2))
plot(ecdf(nyt8$Age),main="NYT 8 AGE")
plot(ecdf(nyt10$Age),main="NYT 10 AGE")
plot(ecdf(nyt8$Impressions),main="NYT 8 Impressions")
plot(ecdf(nyt10$Impressions),main="NYT 10 Impressions")
plot(ecdf(nyt8$Clicks),main="NYT 8 Clicks")
plot(ecdf(nyt10$Clicks),main="NYT 10 Clicks")

par(mfrow=c(3,2))
qqnorm(nyt8$Age,main="NYT 8 AGE")
qqnorm(nyt10$Age,main="NYT 10 AGE")
qqnorm(nyt8$Impressions,main="NYT 8 Impressions")
qqnorm(nyt10$Impressions,main="NYT 10 Impressions")
qqnorm(nyt8$Clicks,main="NYT 8 Clicks")
qqnorm(nyt10$Clicks,main="NYT 10 Clicks")

t.test(nyt8$Age)
t.test(nyt8$Impressions)
t.test(nyt8$Clicks)
t.test(nyt10$Age)
t.test(nyt10$Impressions)
t.test(nyt10$Clicks)

