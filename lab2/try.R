#Read the csv file
EPI_data <- read.csv("~/Desktop/DataAnalyticsSpring2020/lab2/EPI_data.csv")
attach(EPI_data)
fix(EPI_data)

summary(EPI_data)
head(EPI_data)
tail(EPI_data)

install.packages("dplyr")
library(dplyr)



