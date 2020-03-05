#creating a matrix data with random numbers
set.seed(12345)
help(par)
par(mar=rep(0.2,4))
data.Matrix <- matrix(rnorm(400),nrow = 40)
image(1:10, 1:40, t(data.Matrix)[,nrow(data.matrix):1])
par(mar=rep(0.2,4))  
heatmap(data.Matrix)
set.seed(678910)
for(i in 1:40) {
  coin_Flip <- rbinom(1, size = 1, prob = 0.5)
  if (coin_Flip) {
    data.Matrix[i, ] <- data_Matrix[i, ] + rep(c(0,3), each = 5)
  }
}

hh <- hclust(dist(data.Matrix))






