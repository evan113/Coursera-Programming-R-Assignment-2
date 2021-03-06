## put comments here that give an overall description of what your
## functions do
#cachematrix.R ---> evan113

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){}

       ## this function makeCacheMatrix has a matrix as an input, one can set the value
       ## of the matrix, and both set and receive the inverse matrix. The matrix() 
       ## can cache its own object.

#<<- operator is used to assign a value to an object in an environment tht is 
#different from the current environment.

## take the matrix as an input
makeCacheMatrix <- function(x = matrix()) { 
        inv <- NULL     
        
        #set the value of the matrix
        set <- function(y) { 
                x <<- y
                inv <<- NULL
        }
        
        get <- function() x  #get the value of the matrix
        setinverse <- function(inverse) inv <<- inverse #set the value of the inverted matrix
        getinverse <- function() inv    #get the value of the inverted matrix
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## The function cacheSolve quantifies the inverse of the "matrix" that is returned by 
## makeCacheMatrix.
## If the inverse was already calculated and the matrix was not changed, then 
## cacheSolve will retrieve the inverse from the cache


cacheSolve <- function(x, ...){
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cache data")
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}



