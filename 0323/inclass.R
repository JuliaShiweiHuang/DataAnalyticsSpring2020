# In this lab, we perform PCA on the USArrests data set, which is part of the base R package.
#The rows of the data set contain the 50 states, in alphabetical order.
# We will use the USAArrest data that available on RStudio
data("USArrests")
states=row.names(USArrests)
states
# The columns of the data set contain the four variables.
names(USArrests )
# We first briefly examine the data. We notice that the variables have vastly different means.
# Note that the apply() function allows us to apply a function—in this case, the mean() function
# to each row or column of the data set.
# The second input here denotes whether we wish to compute the mean of the rows, 1, or the columns, 2.
# We see that there are on average three times as many rapes as murders,
#and more than eight times as many assaults as rapes.
apply(USArrests , 2, mean)
# We can also examine the variances of the four variables using the apply() function.
apply(USArrests , 2, var)

pr.out=prcomp(USArrests, scale=TRUE)
names(pr.out)

pr.out$center
pr.out$scale

pr.out$rotation

dim(pr.out$x)

biplot(pr.out, scale=0)

pr.out$sdev



