# we perform PCA on the USArrests data set, which is part of the
# base R package.
#The rows of the data set contain the 50 states, in alphabetical order.
# We will use the USAArrest data that available on RStudio
data("USArrests")
states=row.names(USArrests)
states
# The columns of the data set contain the four variables.
names(USArrests )
apply(USArrests , 2, mean)
apply(USArrests , 2, var)
# We now perform principal components analysis using the prcomp() function, which is one of several functions in R that
# perform PCA.
# By default, the prcomp() function centers the variables to have mean zero. By using the option scale=TRUE,
# we scale the variables to have standard deviation one.
# The output from prcomp() contains a number of useful quantities.
pr.out=prcomp(USArrests, scale=TRUE)
names(pr.out)

# The center and scale components correspond to the means and standard deviations of the
# variables that were used for scaling prior to implementing PCA.
pr.out$center
pr.out$scale

pr.out$rotation

# That is, the kth column is the kth principal component score vector.
dim(pr.out$x)
# We can plot the first two principal components as follows:
biplot(pr.out, scale=0)
# The scale=0 argument to biplot() ensures that the arrows are scaled to represent the
# loadings;
# other values for scale give slightly different biplots with different interpretations.
# The prcomp() function also outputs the standard deviation of each principal component.
# For instance, on the USArrests data set, we can access these standard deviations as follows:
pr.out$sdev

# The variance explained by each principal component is obtained by
# squaring these:
pr.var = pr.out$sdev^2
pr.var

pve = pr.var/sum(pr.var)
pve
# We cab see the first principal component explains 62.0% of the variance
# in the data.
# The next principal component explains 24.74% of the variance, and so
# forth...

data("iris")
head(iris)

irisdata1 <- iris[,1:4]
irisdata1

head(irisdata1)

principal_components <- princomp(irisdata1, cor = TRUE, score = TRUE)

summary(principal_components)






