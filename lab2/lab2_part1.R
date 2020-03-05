#Read the csv file
EPI_data <- read.csv("~/Desktop/DataAnalyticsSpring2020/lab2/EPI_data.csv")
attach(EPI_data)
View(EPI_data)
fix(EPI_data)

library(dplyr)

sample_n(EPI_data['EPI'], size = 0.1)
sample_n(EPI_data['DALY'], size = 0.1)

new_decs_EPI <- arrange(EPI_data['EPI'], desc(EPI))

summarise(EPI_data, means = mean(EPI, na.rm = TRUE))
summary(EPI_data$EPI)

mean(EPI_data$EPI, na.rm = "TRUE")
median(EPI_data$EPI, na.rm = "TRUE")

mean(EPI_data$DALY, na.rm = "TRUE")
mean(EPI_data$DALY, na.rm = "TRUE")

hist(EPI_data$EPI)
hist(EPI_data$DALY)

