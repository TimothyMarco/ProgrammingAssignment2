## Functions to more efficiently work with matrices. Goal here is to be able to avoid having to repeatedly go through computationally-intesive process of inverting a large matrix if is hasn't changed.


## Create the the matrix with cache-capable inverse.

makeCacheMatrix <- function(x = matrix()) {
 #set the solution as NULL if it hasn't yet been calculated 
  
  solution <- NULL
  
  #set the value of the original matrix
  set <- function(y) {
    x <<- y
    
    #the solution hasn't been calculated yet, so set it as null
    solution <- NULL
  }
  
  #return the original matrix
  get <- function() {
    x
  }
  
  #store the solution to the matrix
  setsolution <-function(x) {
    solution <<-x
  }
  
  #get the solution of the matrix
  getsolution <-function() {
    solution
  }
  
  # Returns a list of the functions previously described  
  list(set = set, get = get,
       setsolution = setsolution,
       getsolution = getsolution)
}


## Check if the matrix has changed and calculate inverse if necessary. If the matrix has not changed, and cached version exists, return the cached version rather than re-calculating it.

cacheSolve <- function(x, ...) {
  # check to see if the solution has already been cached
  s <- x$getsolution()
  
  #if the matrix has already been solved, don't bother re-solving it
  if(!is.null(s)) {
    message("Getting cached solution")
    return(s)
  }
  
  #otherwise, you're going to need to solve the stored matrix
  
  
  #get the matrix from makeCacheMatrix
  thematrix <- x$get()
  #solve it
  s <- solve(thematrix)
  s <- x$setsolution(s)
  #return the solution
  s
}
