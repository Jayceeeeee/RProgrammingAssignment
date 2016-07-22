## inverse the matrix and create cache
## so that the code will speed up 

## define the function within a "list"

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x #functionreturn x value
        setInverseMatrix <- function(solve) m <<- solve #function,assignin m
        getInverseMatrix <- function() m #function,return value m，get the value of mean
        list( set = set, get = get,
              setInverseMatrix = setInverseMatrix,
              getInverseMatrix = getInverseMatrix)
}


## call the function defined above, get in the matrix and inverse in, output
## the inverse matrix, all the default input matrix can inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverseMatrix()
        if (!is.null(m)){               #if the argument is null,return
                message("get cached data")
                return(m)
        }
        data <- x$get()             #solve m 
        m <- solve(data, ...)
        x$setInverseMatrix(m)
        m
}










