## Functions to more efficiently work with matrices. Goal here is to be able to avoid having to repeatedly go through computationally-intesive process of inverting a large matrix if is hasn't changed.


## Create the the matrix with cache-capable inverse.

makeCacheMatrix <- function(x = matrix()) {

}


## Check if the matrix has changed and calculate inverse if necessary. If the matrix has not changed, and cached version exists, return the cached version rather than re-calculating it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
