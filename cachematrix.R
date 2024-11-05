# The following functions used together can cache the inverse of a matrix 

# makeCacheMatrix(x = matrix()) - used to create a special 'matrix' 
# The special matrix is a list containing a function to 
# 1) set the value of the matrix 
# 2) get the value of the matrix 
# 3) set the value of its inverse 
# 4) get the value of its inverse 

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) s <<- solve
  getinverse <- function() s 
  list(set = set, get = get, 
       setinverse = setinverse, getinverse = getinverse)
}


# cacheSolve(x, ...) - calculates the inverse of the special 'matrix' created earlier

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getinverse()
        if(!is.null(s)) {
          message('getting cached data')
          return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setinverse(s)
        s
}


