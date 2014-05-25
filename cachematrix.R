## Matrix inversion is usually a costly computation and it may be some benefit 
## to caching the inverse of a matrix rather than computing it repeatedly.
## These functions are a pair of functions that cache the inverse of 
## a matrix

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) { # 'x' is a invertible square matrix
	im <- NULL   # set inverse matrix 'im' to undefined object(i.e. NULL)
	set <- function(y) {  # set(y) function
		x <<- y       # set 'x' to matrix 'y' in a different environment
		im <<- NULL   # set inverse matrix 'im' to NULL 
	}
	get <- function() x   # get() function
                              # return matrix 'x'
	setinverse <- function(inverse) { # setinverse(inverse) function
                im <<- inverse            # set 'im' to inverse matrix 'inverse' 
                                          #   in a different environment
	}
	getinverse <- function() im  # getinverse() function
                                     # return inverse matrix 'im'
        
        # create the list and give the elements appropriate names
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function computes the inverse of the special "matrix" returned by
## makeCacheMatrix above. If the inverse has already been calculated
## (and the matrix has not changed), then the cacheSolve should retrieve 
## the inverse from cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        # 'x' is list including functions and values

	im <- x$getinverse()  # set 'im' to inverse matrix value stored in 'x'
	if (!is.null(im)) {   # In the case that there is valid inverse matrix 'im' 
                              #   instead of NULL
		message("getting cached data") # display the message
		return(im)  # return cached inverse matrix 'im'
	}
        
        ## In the case that 'im' is NULL
	data <- x$get()  # set 'data' to matrix value stored in 'x'
	im <- solve(data, ...)  # compute inverse matrix of 'data' and then set 'im' to the result
	x$setinverse(im)  # set inverse matrix value in a different environment to 'im'
	im   # return 'im'
}
