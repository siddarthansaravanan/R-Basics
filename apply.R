rm(list=ls())
#apply - apply a function to the rows or columns of a matrix 
#and higher-dimensional analogues
M <- matrix(seq(1,16), 4, 4)
#min to columns
apply(M, 2, min)
#max to rows
apply(M, 1, max)
# 3 dimensional array
M <- array( seq(32), dim = c(4,4,2))
# Apply sum across each M[*, , ] - i.e Sum across 2nd and 3rd dimension
apply(M, 1, sum)
# Apply sum across each M[*, *, ] - i.e Sum across 3rd dimension
apply(M, c(1,2), sum)

#lapply - apply a function and returns a list
x <- list(a = 1, b = 1:3, c = 10:100) 
lapply(x, FUN = length) 
lapply(x, FUN = sum) 

#sappl - apply function and returns a vector
x <- list(a = 1, b = 1:3, c = 10:100)
#Compare with above; a named vector, not a list 
sapply(x, FUN = length)  
sapply(x, FUN = sum)

sapply(1:5,function(x) rnorm(3,x))
#returning a 4 values vector for every 2 x 2 matrix
sapply(1:5,function(x) matrix(x,2,2))
#returning individual array 2 x 2 matrix
sapply(1:5,function(x) matrix(x,2,2), simplify = "array")

#vapply - saves time than sapply
x <- list(a = 1, b = 1:3, c = 10:100)
#Note that since the advantage here is mainly speed, this
# example is only for illustration. We're telling R that
# everything returned by length() should be an integer of 
# length 1. 
vapply(x, FUN = length, FUN.VALUE = 0L)

#mapply - For when you have several data structures (e.g. vectors, lists) 
#and you want to apply a function to the 1st elements of each, and then the 2nd elements 
#of each, etc.,coercing the result to a vector/array as in sapply
#multivariate sapply
mapply(sum, 1:5, 1:5,1:5) 

mapply(sum, 1:4, 4:1)

Map(sum, 1:5, 1:5, 1:5)


