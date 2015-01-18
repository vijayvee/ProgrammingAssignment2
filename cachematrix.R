## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##cache list creation
makeCacheMatrix <- function(x = matrix()) {
m <- NULL;
set <- function(y){
  x<<-y;
  m<<-NULL;

}
get <- function() x;
setinv <- function(solve) m <<- solve;
getinv <- function() m;
list <- list(set=set,get=get,setinv=setinv,getinv=getinv);
}


## Write a short comment describing this function
##retrieving from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getinv();
  if(!is.null(m)){
    print("Retrieving from cache");
    return(m);
    
  }
  mat <- x$get();
  m <- solve(mat);
  x$setinv(m);
  m;
}
