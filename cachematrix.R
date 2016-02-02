## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This one to create a matrix/object that behaves in the expected way
## takes an inversible matrix as parameter and returns an cacheable matrix/object to use with cacheSolve

makeCacheMatrix <- function(x = matrix()) {
        mInv <- NULL
        set <- function(y) {
                x <<- y
                mInv <<- NULL
        }
        get <- function() x
        setInv <- function(xinv) mInv <<- xinv
        getInv <- function() mInv
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}


## Write a short comment describing this function
## Returns (cached) inverse of a matrix
##   it computes the inverse when called for the first time
##   the parameter x had to be created with makeCacheMatrix()

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	mInv <- x$getInv()
	if(is.null(mInv)) {
		data <- x$get()
		mInv <- solve(data, ...)
		x$setInv(mInv)
	} else {
			message("getting cached data")
	}
	mInv
}
