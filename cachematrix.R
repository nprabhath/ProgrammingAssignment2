## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	## Initialize 
    i <- NULL

    ##  set the matrix
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }

    ##  get the matrix
    get <- function() {
    	## Return the matrix
    	m
    }

    ##  set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ##  get the inverse of the matrix
    getInverse <- function() {
        ## Return 
        i
    }

    ## a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$getInverse()

    ## Just return the inverse if its already set
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ##  the matrix from our object
    data <- x$get()

    ## Calculate the inverse 
    m <- solve(data) %*% data

    ## the inverse to the object
    x$setInverse(m)

    ##the matrix
    m
}
