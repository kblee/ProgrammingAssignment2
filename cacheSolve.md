## cacheSolve

Retrieve the inverse

Description:

     This function computes the inverse of the special "matrix" returned by 'makeCacheMatrix' function. 
     If the inverse has already been calculated (and the matrix has not changed), then 
     the 'cacheSolve' should retrieve the inverse from the cache.

Usage:

     cacheSolve(x)

Arguments:

     x: list including functions and values, created by 'makeCacheMatrix' function

Details:

     At first, this function gets the inverse from x, and then checks if the inverse exists.
     If the inverse exists, this function display the following message "getting cached data" and
     returns the inverse. Otherwise, this function gets the original matrix from x and 
     compute the inverse of the matrix. Then, this function sets the computed inverse to x and
     returns the inverse. 

See Also:

     'makeCacheMatrix' for writing a pair of functions that cache the inverse of a matrix.

Examples:

     ma <- matrix(1:4, 2, 2)
     a <- makeCacheMatrix(ma)
     cacheSolve(a)
           [,1] [,2]
     [1,]   -2  1.5
     [2,]    1 -0.5

     cacheSolve(a)
     getting cached data
           [,1] [,2]
     [1,]   -2  1.5
     [2,]    1 -0.5
