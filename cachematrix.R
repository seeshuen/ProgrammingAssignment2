## Functions to manage a cached matrix and the inversion of it

## A cached matrix object that provides function to
## get/set the matrix and the inversion of it.
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverted <- function(inverted) i <- inverted
  getinverted <- function() i
  list(set = set, get = get,
       setinverted = setinverted,
       getinverted = getinverted)
}


## compute and cache the invesion of the matrix
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinverted()
  if(!is.null(i)) {
    message("getting inverted matrix")
    return(i)
  }
  metrix <- x$get()
  i <- solve(metrix, ...)
  x$setinverted(m)
  i
}
