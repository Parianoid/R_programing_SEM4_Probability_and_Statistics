install.packages("e1071")

library ("e1071") 
library ("distr")
Code to remove package after use:
  detach("stats", unload = TRUE)

x <- 1:7
k <- 1/8
p <- c(k,2*k,3*k,k^2,k^2+k,2*k^2,4*k^2)

EX <- sum(x*p)
VX <- sum(x^2*p)-EX^2
EX
VX
sum(p[x<5])
sum(p[x>=1 & x<=5])
barplot(p, names.arg=x, col="skyblue",main="PDF OF X")

cdf <- cumsum(p)
plot(x,cdf,type="s", col="red",main="CDF of X")

x <- c(-2,-1,0,1,2,3)
k <- 1/15
p <- c(0.1,k,0.2,2*k,0.3,3*k)

sum(p)
sum(p[x < 2])

EX <- sum(x*p)
VX <- sum(x^2*p) - EX^2

EX
VX

barplot(p, names.arg=x, col="lightgreen", main="PDF of X")
plot(x, cumsum(p), type="s", col="blue", main="CDF of X")


x <- c(-2,-1,0,1,2)
p <- c(1/5,1/5,2/5,2/15,1/15)

y <- x + 1

EY <- sum(y*p)
VY <- sum(y^2*p) - EY^2

EY
VY

barplot(p, names.arg=y, col="orange", main="PDF of Y")
plot(y, cumsum(p), type="s", col="purple", main="CDF of Y")



x <- c(-3,-2,-1,0,1,2)
p <- c(0.05,0.1,0.2,0.3,0.2,0.15)

# Mean
EX <- sum(x*p)

# Variance
VX <- sum(x^2*p) - EX^2

EX
VX

# PDF plot
barplot(p, names.arg=x, col="skyblue", main="PDF of X")

# CDF plot
plot(x, cumsum(p), type="s", col="red", main="CDF of X")

# Possible values of X
x <- c(0,1,2)

# Probabilities using combinations
p <- c(
  choose(3,2)/choose(10,2),
  choose(7,1)*choose(3,1)/choose(10,2),
  choose(7,2)/choose(10,2)
)

# Check probabilities
sum(p)

# Expected value
EX <- sum(x*p)
EX

# PDF plot
barplot(p, names.arg=x, col="lightgreen",
        main="PDF: Number of White Balls",
        xlab="Number of White Balls", ylab="Probability")

# CDF plot
plot(x, cumsum(p), type="s", col="blue",
     main="CDF: Number of White Balls",
     xlab="Number of White Balls", ylab="Cumulative Probability")



