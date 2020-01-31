EPI_data <- read.csv("~/Desktop/DataAnalyticsSpring2020/lab1/2010EPI_data.csv", skip=1,header=T)
View(EPI_data)
attach(EPI_data)
fix(EPI_data)

tf <- is.na(EPI)
E <- EPI[!tf]
EPI

summary(EPI)
fivenum(EPI, na.rm=TRUE)
stem(EPI)
hist(EPI)
lines(density(EPI, na.rm=TRUE, bw='SJ'))
rug(EPI)
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty='s')
qqnorm(EPI);
qqline(EPI)
x <- seq(30, 95, 1)
qqplot(qt(ppoints(250), df=5), x, xlab = 'Q-Q plot for tdsn')
qqline(x)






