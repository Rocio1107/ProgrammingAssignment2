## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
get <- function() x

    setinverse <- function(inverse) inv <<- inverse

    getinverse <- function() inv

    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
    
    # Si ya se calculó, retorna la inversa en caché
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    
    # Si no está en caché, calcula la inversa
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}
