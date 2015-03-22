## fitst function, makeVector creates a special "vector", which is really a list containing a function to:
## 1. setMatrix: set the value of a matrix
## 2. getMatrix: get the value of a matrix
## 3. cacheMatrix: get the carched value (inverse of the matrix)
## 4. getInverse: get the cached value (inverse of the matrix)

## makeVector <- function(x = numeric()) {
##      m <- NULL
##      set <- function(y) {
##              x <<- y
##              m <<- NULL
## }
## get <- function () x
## setmean <- function(mean) m <<- mean
## getmean <- function() m
## list(set = set, get = get,
##      setmean = setmean,
##      getmean = getmean)
## }
## The next function calculates the mean of the special "vector" created wiht the above function.  It checks to see if 
## the mean has already been calculated. If so, the mean from the cache and skips the computation.  Otherwise, if calculates
## the mean of the data and sets the value of the mean in the cache via the setmean function.
##
## cachemean <- function(x, ...) {
##      m <- x$getmean()
##      if(!is.null(m)) {
##              message("getting cached data")
##              return(m)
##      }
##      data <- x$get()
##      m <- mean(data, ...)
##      x$setmean(m)
##      m
## }
## BEGIN ASSIGNMENT
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
