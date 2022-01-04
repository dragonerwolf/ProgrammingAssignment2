##Below are two functions that are used to create a special object that stores
##a matrix and cache's its inverse.
##Code is from the instructions, replacing matrix and inverse.
##The first function, makeCacheMatrix creates a special "matrix"
##which is really a list containing a function to:

## set the value of the matrix
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  
  ## get the value of the matrix
  get <- function()x
  
  ## set the value of the inverse
  setInverse <- function(inverse) i <<- inverse
  
  ## get the value of the inverse
  getInverse <- function() i 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

##The following function calculates the inverse of the special "matrix" created
##with the above function. However, it first checks to see if the inverse has
##already been calculated. If so, it gets the inverse from the cache and skips
##the computation. Otherwise, it calculates the inverse of the data and sets the
##matrix in the cache via the setInverse function.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x', if found, use the message
  i <- x$getInverse()
  if(!is.null(i)){
    message("getting cached data")
    return(j)
  }
  ## when cache not found, it will need to calculate
  mdata <- x$get()
  i <- solve(mdata,...)
  x$setInverse(i)
  i
}