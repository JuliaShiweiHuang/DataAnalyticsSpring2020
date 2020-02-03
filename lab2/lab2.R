#Read the csv file
multivariate <- read.csv("~/Desktop/DataAnalyticsSpring2020/lab2/multivariate.csv")
attach(multivariate)
names(multivariate)
multivariate

#create some scatterplots
plot(Income, Immigrant, main = "Scatterplot")
plot(Immigrant, Homeowners)

#Fitting Linear Models using "lm" function
help(lm)
mm<- lm(Homeowners ~ Immigrant)
mm
plot(Immigrant, Homeowners)
abline(mm)
abline(mm, col=2, lwd = 3)

summary(mm)
attributes(mm)
mm$coefficients



