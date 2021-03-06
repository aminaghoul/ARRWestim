### chose parameters
n <- 10000
phi <- 0.2
sdEta2 <- 0
sdNu2 <- 1

### GENERATE DATA
y <- dataARRW(n = n, sdEta2 = sdEta2, sdNu2 = sdNu2, phi = phi, poisParam = 0, meanGap = 2)

###  plot the time-series
plotARRW(y)

###  plot the diff-1 time-series and show changepoints
plotARRWdiff(y)

## ESTIM VARIANCES
nb <- 10
v <- estimVar(y$y, nbK = nb)

#### find all parameters (the AR and RW variances and phi AR(1) autocorrelation parameter)
bestParameters(v = v, nbK = nb)

###  compare data for the least-square criterion
plotVarVarEstim(v, sdEta2, sdNu2, phi, nbK = nb)

