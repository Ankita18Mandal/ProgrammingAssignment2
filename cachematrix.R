## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<- function(m= matrix()){
        ##To initialize the inverse property
  i<- NULL
        ##set function for setting the matrix 
  set<- function(matrix)
  {
    m<<-matrix
    i<<-NULL
  }  
        ##get function for getting the matrix 
  get<- function(){
    m
  } 
        ##setting the inverse function of the matrix
  setinverse <- function(inverse){
    
   i <<- inverse
  }
        
        ##getting the inverse function of the matrix
  getinverse <- function()
    {
    i
    }
        ##returning the list of methods
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## Write a short comment describing this function

cacheSolve<- function(x, ...){
  m<- x$getinverse()
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }
        ##geting the matrix from the object
  data<- x$get()
  m<-solve(data) %*% data
        ##set the inverse to the object
  x$setinverse(m)
}


