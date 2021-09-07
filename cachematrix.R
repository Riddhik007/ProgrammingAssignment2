## The following is a pair of functions that cache and compute the 
## inverse of a matrix.

## The function creates a matrix and then stores its inverse

makeCacheMatrix <- function(x = matrix())
  inverse_matrix <- NULL # Setting inverse matrix to null
  setmatrix <- function(y)                   
  x <<- y                 # function to set only new value of a matrix            
  inverse_matrix <<- NULL                        
  }
  getmatrix <- function() x         # to get value of the matrix            
  setinverse <- function(inverse) inverse_matrix <<- inverse  # function to set the inverse value of the matrix
  getinverse <- function() inverse_matrix          # function to get the inverse matrix           
  list(setmatrix = setmatrix, getmatrix = getmatrix, setinverse = setinverse, getinverse = getinverse)
}


## ##This function computes inverse of matrix returned from the function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the invesrse of 'x'
        inverse_matrix <- x$getinverse()
        if(!is.null(inverse_matrix)) {
         #message to display data being fetched from cache
         message("Fetching cached data....")
         return(inverse_matrix)
  }
         data <- x$getmatrix()
         inverse_matrix <- solve(data, ...)
         x$setinverse(inverse_matrix)
         inverse_matrix
}
