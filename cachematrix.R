## Assignemnt 2

makeCacheMatrix <- function(mat = matrix()) {
    inv <- NULL
    set <- function(x) {
        mat <<- x
        inv <<- NULL
    }
    get <- function() mat
    setinverse <- function(solve) inv <<- solve
    getinverse <- function() inv
    return(list(set = set, get = get, 
                setinverse = setinverse, 
                getinverse = getinverse))
}

## Write a short comment describing this function

cacheSolve <- function(mat, ...) {
    inv <- mat$getinverse()
    if(!is.null(inv)) {
        message("Getting cached data...")
        return(inv)
    }
    data <- mat$get()
    inv <- solve(data, ...)
    mtx$setinverse(inverse)
    inv
}