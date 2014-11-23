## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Jason Stedl Nov 22 2014 
## Basic Function to store a matrix and its inverse using <<-
## Uses set to set matrix 
## Uses get to get matrix
## inverse_glob is the global var for inverse of the given matrix
makeCacheMatrix <- function(x = matrix()) {
  inverse_glob  <- NULL
  set <- function(y) {
    x <<- y
    inverse_glob <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inverse_glob <<- inverse
  getinverse <- function() inverse_glob
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
  
  
}


## cacheSolve Jason Stedl Nov 2014 
## basic function to calculate the inverse of  matrix using solve
## uses the matrix setter and getter function
## 



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  matrix_x <- x$get()
  inverse <- solve(matrix_x)
  message("using solve to find inverse")
  x$setinverse(inverse)
  inverse
}
