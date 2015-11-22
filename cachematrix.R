## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix stores matrix x in memory to reduce unnecessary time-consuming computations
## cacheSolve produces the inverse of a matrix either by pulling it from memory or computing it if necessary
## Write a short comment describing this function
## makeCacheMatrix returns a list of functions
  ##  - set the value of the matrix
  ##  - get the value of the matrix
  ##  - set the value of the inverse matrix
  ##  - get the value of the inverse matrix
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
## cacheSolve calculates the inverse of the matrix from the function 
## makeCacheMatrix. First it checks to see if the inverse has been computed
## if so, it gets the result. If not it computes the inverse and stores the result 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  m <- x$get()
  i <- solve(m, ...)
  x$setinverse(i)
  i
}

