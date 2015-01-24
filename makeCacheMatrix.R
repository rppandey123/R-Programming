## This function runs similiar to the code https://class.coursera.org/rprog-010/human_grading/view/courses/973491/assessments/3/submissions
## This function assigns values to the matrix and stores relevant values in list

makeCacheMatrix <- function(x = numeric()) {
        
	# Set the cache to NULL to start with
	cache <- NULL

        ## This function stores the matrix
	setMatrix <- function(newMatrix) {
                x <<- newMatrix
                cache <<- NULL
        }

	## This function returns the stored matrix
        getMatrix <- function(){ x}

        ## This function inverses the matrix and moves the value to cache
	MatrixInverse <- function(Inverse){ 
		cache <<- Inverse}
	
	## Returns the value stored in cache
	getInverse <- function(){ cache}
        
	## Return all the values
	list(setMatrix = setMatrix, getMatrix = getMatrix, MatrixInverse = MatrixInverse, getInverse = getInverse)
}