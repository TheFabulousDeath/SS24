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

#Aufgabe 2.6
  
  #  
  

  muenze = function(N, K)
  {
    resN <- vector(mode = "numeric",length = N)
    for(i in 1:N){
      resK <- sample(2, size = K, replace=TRUE)*2-3
      resN[i] = sum(resK)
    }
    return(resN/sqrt(K))
  }

  hist(muenze(100000,1), breaks = 10)
  hist(muenze(100000,2), breaks = 50)
  hist(muenze(100000,12), breaks = 100)
  hist(muenze(100000,1000), breaks = 150)
  
#Aufgabe 2.7
  
  erf = function(x) {
    return(2*pnorm(sqrt(2)*x) -1)
  }
  
  norm2unif = function (N){
    y <- rnorm(1000000, mean = 0, sd = 1) # EIGENTLICH MÜNZWURF
    return(0.5 * erf(y/sqrt(2))+0.5)
  }
  
  jakeSpectrum2 = function(n){
    f = function(x) {sinpi(x-0.5)}
    x = norm2unif(n)
    return = f(x)
  }
  
  hist(norm2unif(10**7),breaks = 150)
  hist(jakeSpectrum2(10**6), breaks = 200)