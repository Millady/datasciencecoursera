## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function (myMatrix = matrix()){
  
  mInv = NULL
  
  set = function(y){
    
    myMatrix <<- y
    mInv <<- NULL
    
  }
  
  get = function() myMatrix
  setInv = function(iinv) mInv <<- iinv
  getInv = function() mInv
  list (set = set, get = get, setInv = setInv, getInv = getInv)
  
}

cacheSolve <- function (myMatrix, ...){
  
   inv = myMatrix$getInv()
   
   mat.data = myMatrix$get()
   inv = solve(mat.data, ...)
   
   myMatrix$setInv(inv)
   
   return(inv)
}
