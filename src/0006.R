differenceSquareSumSumSquares <- function(nums) {
	sumNums <- Reduce("+", nums)
	squareSum <- sumNums * sumNums

	squares <- Map(function(a) return(a * a), nums)
	sumSquares = Reduce("+", squares)

	return(squareSum - sumSquares)
}

problem6 <- function() {
	return(differenceSquareSumSumSquares(1:100))
}

