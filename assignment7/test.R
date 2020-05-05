getwd()
read.csv("~/Desktop/DataAnalyticsSpring2020/assignment7/Absenteeism_at_work.csv")->winered
getwd()

work <-read.csv("~/Desktop/DataAnalyticsSpring2020/assignment7/Absenteeism_at_work.csv")
View(work)
ncol(work)

work<-read.csv("~/Desktop/DataAnalyticsSpring2020/assignment7/Absenteeism_at_work.csv", sep=";")
View(work)

str(work)
summary(work)

library(dplyr)
library(ggplot2)

reasons<-ggplot(work, aes(x = Reason.for.absence, fill = Reason.for.absence)) + geom_bar()
reasons

day<-ggplot(work, aes(x = Day.of.the.week, fill = Day.of.the.week))
day

height<-ggplot()





















