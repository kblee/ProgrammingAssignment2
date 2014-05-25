## makeCacheMatrix

Create a 'matrix' object 

Description:

     This function creates a special 'matrix' object that can cache its inverse.

Usage:

     makeCacheMatrix(x)

Arguments:

     x: a invertible square matrix. The default of x is numeric().

Details:

     This function initially sets the inverse to NULL. At last, this function creates 
     the list and gives the elements appropriate names.

     In addition, this function contains four child functions, 
     set(), get(), setinverse(), and getinverse().

     set(): set the value of the matrix
     get(): get the value of the matrix
     setinverse(): set the value of the inverse matrix
     getinverse(): get the value of the inverse matrix

See Also:

     'cacheSolve' for writing a pair of functions that cache the inverse of a matrix.

Examples:

     ma <- matrix(1:4, 2, 2)
     a <- makeCacheMatrix(ma)
     a$get()
     	   [,1] [,2]
     [1,]    1    3
     [2,]    2    4
