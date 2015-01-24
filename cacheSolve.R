## This function runs similiar to the code https://class.coursera.org/rprog-010/human_grading/view/courses/973491/assessments/3/submissions

## This function inverses the matrix

cacheSolve <- function(x, ...) {

	## First look for the inverse in the variable
	mInverse <- x$getInverse()

	## If inverse exists, we return existing value

	if(!is.null(mInverse)) {
                message("getting cached data")
                return(mInverse)
        }
	
	## Store the matrix in variable matrix, and get inverse via function solve and then store in cache to ensure we use it
	## The function Choleski decomposition can also be used (chol2inv(chol(Matrix))); Solve is slow on older macchines like mine
	Matrix <- x$getMatrix()
	mInverse <- solve(Matrix)
	x$MatrixInverse(mInverse)

	## Return the inverse of the matrix
	mInverse

}

	
