# The expected inverse of the following matrix
# 3 2 5
# 2 3 2
# 5 2 4
# ...is:
# [1,] -0.2857143  0.5  0.1071429
# [2,] -0.2857143  1.0 -0.1428571
# [3,]  0.7142857 -1.5  0.1071429
#
source("cachematrix.R")
a1 <- c(3, 2, 5)
a2 <- c(2, 3, 2)
a3 <- c(5, 2, 4)
# Create a matrix
A <- rbind(a1, a2, a3)

T1 <- makeCacheMatrix(A)

T2 <- cacheSolve(T1)
print(T2)
T3 <- cacheSolve(T1)
stopifnot(identical(T2, T3))