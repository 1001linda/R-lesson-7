_Plot_

#xlim x軸延伸範圍
  //xlim = c(-5, 5)
ylab = "Chisquare density"

type = "l", p, b, s, n

plot(table(rpois(100, 5)), type = "h", col =  5,
     lwd = 2, main = "Poisson distribution", ylab="", xlab="")

lines( , add = "T")

plot(1, 5, pch=1, xlim = c(0,25), ylim = c(0,20))
for(i in 1:25){
  points(i, 15, pch=i, col=3)
}

plot(0:20, 0:20, type="n", ylab="", xlab="", bty="n")
for(i in 1:3){
  for(j in 1:25){
    points(j, 5*i, pch=j, col = i)
  }
}

abline(v = 3)
abline(h = 5)
abline(1, 1, col=2, lwd = 10) 

_Exercise A_

library(MASS)
mu = c(0,0)
p = 0.5
n= 100
sigma = matrix(c(1, p, p, 1), 2, 2) 
data = mvrnorm(n, mu, sigma)
x = data[,1]
y = data[,2]

plot(x, y, pch=15, col=6, ylab="", xlab="", main = "scater plot")

_Exercise B_

f = function(x){
  1/sqrt(2*pi)*exp(-x^2/2)
}
x = seq(-3, 3, by = 0.01)
y = f(x)
plot(x, y, ylab="standard normal pdf", xlab="x", type=l", lty=5)

f1 = function(x){
  1/sqrt(2*pi*2)*exp(-x^2/(2*2))
}
y1 = f1(x)
lines(x, y1, col=2, lwd=2)

_Photo Exercise_

plot(0, 0, col=2, pch=14, bty="n", xlim=c(0,10), ylim=c(0,100), 
      xlab="", ylab="")
for(i in 1:10){
  points(i, i^2, pch=14, cex=5)
}

x = c(0:3)
y = x^2
lines(x, y, lty=2, col="red")

for(i in 1:7){
  points(i, 2*i^2, pch=6, col="blue")
}


plot(0:12, 0:12, bty="n", type="n", xlab="", ylab="")
abline(v=c(0,4,8,12), lty=2)
abline(h=c(0,4,8,12), lty=2)
points(2, 10, pch=16, cex=17, col="gray")
points(2, 6, pch=20, cex=15, col="orange")

curves(1/sqrt(2*pi*2)*exp(-x^2/(2)),-3,3, col=2, lty=2)

text(-1, 0.2, "this is a normal plot", cex=3)

axis(1, at=1:9, labels=letters[1:9], tick=False)
#x座標

plot(1:4, rnorm(4), axes=False, ylab="", xlab="", ylim=c(-3,3))
axis(2, 1:3, LETTERS[1:3])
axis(3, 1:3, letters[1:3])
axis(4, 1:3, letters[1:3])
axis(1, 1:3, 1:3)
axis(1, 1:3, c("x1","x2","x3"))
















 