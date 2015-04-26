## fitst function, makeVector creates a special "vector", which is really a list containing a function to:
## 1. setMatrix: set the value of a matrix
## 2. getMatrix: get the value of a matrix
## 3. cacheMatrix: get the cached value (inverse of the matrix)
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
## PART 1 OF THE ASSIGNMENT
## To write a pair of functions that cache the inverse of a matrix

## makeCacheMatrix function creates a special  "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

## this will save the cached value or NULL if nothing is cached
## initially nothing is cached so the default is set to NULL
cache <- NULL

# setMatrix stores a matrix
setMatrix <- function(newValueMatrix) {
        x <<- newValueMatrix
        # the matrix is given a new value, flush the cache
        cache <<- NULL
}
getMatrix <- function() {
        x
}
## this will return the stored matrix
getInverse <- function() {
        cache
}
## cache the given argument
list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}
## this will return a list
## each element of the list is a function

## PART 2 OF THE ASSIGNMENT
## this function computes the inverse of the special "matrix" returned by makeCacheMatrix below.  
## if the inverse has already been calculated (and the the matrix has not changed), then the cachesolve should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- y$getInverse()
        ## get the cached value
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
}
## if there is a cached value, this function will return it

## if not, get the matrix, calculate the inverse and store in the cache
data <- y$getMatrix()
inverse <- solve(data)
y$cacheInverse(inverse)

## this will return the inverse
inverse
}
