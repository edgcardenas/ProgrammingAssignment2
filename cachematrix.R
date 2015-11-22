## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix stores matrix x in memory to reduce unnecessary time-consuming computations
## cacheSolve produces the inverse of a matrix either by pulling it from memory or computing it if necessary
## Write a short comment describing this function
## makeCacheMatrix returns a list of functions
makeCacheMatrix <- function(x = matrix()) {
i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
