## Put comments here that give an overall description of what your
## functions do
temp<-matrix()

## Function that inverses the matrix and caches the result.  
###If no matrix is provided as input then it returns the cached matrix

makeCacheMatrix <- function(x = matrix()) {
    if ( is.matrix(x)) {
        im<-Solve(x)
    }
    im
}


## Calculates the inverse of a matrix and save it for later use

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    if ( temp != x ) {
        temp<-x
        makeCacheMatrix(x)
    } else {
        makeCacheMatrix()
    }
}
