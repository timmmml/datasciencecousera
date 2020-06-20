## The functions complete my Coursera assignment

## This one creates a special matrix object that caches its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## This one computes that inverse.

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(inv)) {
                message('cached')
                return(inv)
        }
        data <- x$get()
        if(nrow(data) == ncol(data)) {
                inv = solve(data)
                x$setinv(inv)
        }
        else {
                message('pls get a square matrix and come back thx bye')
        }
        ## Return a matrix that is the inverse of 'x'
}
