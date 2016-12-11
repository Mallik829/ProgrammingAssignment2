## makeCacheMatrix will Cache an invertible square matrix and return a list of functions

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set<-function(y){
    x<<-y
    i<<-NULL
  }
  get<-function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## cacheSOlve will calculate the inverse of matrix x if the value is not null, and store it to variable i

cacheSolve <- function(x, ...) { i <- x$getinverse()
if(!is.null(i)) {
  message("getting cached data")
  return(i)
}
data <- x$get()
i <- solve(data, ...)
x$setinverse(i)
i
        ## Return a matrix that is the inverse of 'x'
}
