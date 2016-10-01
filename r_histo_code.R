library(datasets)
library(scatterplot3d)

sapply(query, query.class)
summary(query)


g = d$query
m<-mean(g)
std<-sqrt(var(g))
hist(g, density=20, breaks=20, prob=TRUE, 
     xlab="x-variable", ylim=c(0, 2), 
     main="normal curve over histogram")
curve(dnorm(x, mean=m, sd=std), 
      col="darkblue", lwd=2, add=TRUE, yaxt="n")