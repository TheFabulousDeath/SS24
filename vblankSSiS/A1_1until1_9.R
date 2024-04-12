#1.1
v = c(4,5,8,11)
s = sum(v)

#1.2
snr = function(S, N) {
  return (log(1 + S/N))
}
snr(1,1)

#1.3
?sqrt
??help

#1.4
source("firstscript.R")
?source

#1.5
P = seq(from = 31, to = 60, by = 1)
mat = matrix(P, ncol = 5, nrow = 6, byrow = TRUE)
view(mat)

#1.6
x1 = rnorm(100)
x2 = rnorm(100)
x3 = rnorm(100)

t = data.frame(a = x1,b = x1 + x2, c = x1 + x2 + x3)

#1.7
x = -10:10
plot(x=x, y=x^2, type= "b", col="red", pch = 8, lwd = 1, cex = 2)
?plot

#histogram
x = c(1,1,3,7,2,4,7,2,2,4,6,2,5,2,1,3,5,2,4,8)
hist(x, breaks = seq(from=0.5, to=8.5))
hist(rnorm(100000),100)

#1.8
sqrt(rnorm(100))

#1.9
v1to100 = seq(1, 100)
for ( i in 1:length(v1to100))
  {
  sum = sum + i
}
print(sum)
