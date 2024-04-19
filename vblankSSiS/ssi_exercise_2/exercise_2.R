#define

#Aufgabe 2.1
  a2.1 = function (vector) {
    hist(vector, breaks = 100)
    print(mean(vector))
    print(var(vector))
    print(sd(vector))
  }
  
  x = rnorm(10**6)
  y = runif(1000000, min = -1,  max = -1)
  z = rexp(1000000)
  
  a2.1(x)
  a2.1(y)
  a2.1(z)

#Aufabe 2.2
  newExp = function(size){
    return (-log(1-runif(size, min = 0, max = 1)))
  }
    #Lösung
    rexp2 = function(n){
      r <- runif(n, min = 0, max = 1)
      return(-log(1-r))
    }
  
  hist(newExp(10**6), breaks = 200)

#Aufgabe 2.4
  
  jakeSpectrum = function(n){
    f = function(x) {sinpi(x-0.5)}
    x = runif(n, min = 0, max = 1)
    return = f(x)
  }
  
  hist(jakeSpectrum(10**6), breaks = 200)
  
#Aufgabe 2.5
  
  x1 <- runif(10**6, min = -1, max = 1)
  x2 <- runif(10**6, min = -1, max = 1)
  x3 <- runif(10**6, min = -2, max = 2)
  x4 <- sample(2,10**6, replace = TRUE)*4-6
  
  samples = list(x1, x2, x3, x4, x1+x2, x1+x3, x1+2, x1+x4)
  for(i in samples){
    hist(i, breaks = seq(from=-5, to=5, by=0.1))    
  }
  