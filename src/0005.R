suppressPackageStartupMessages(library('gmp'))

# no more brute-forcing, unfortunately :(
problem5 <- function() {
	# the largest number evenly divisible by all of the numbers from one to 20
	# is the product of 1:20, or, 2:20
	# i.e., maxValue = Reduce("prod.bigz", 2:20)

	# the smallest number divisible by all the numbers 2 through 20 would be
	# the multiplication of all the prime factors of the numbers 2 to 20 that
	# not repeated more than necessary to form the largest number
	# 
	# e.g., we know that 20 = 2^4 + 3 + 1, so we would have at least 2^4 as one
	# multiplicand
	multiplicands = list()
	for (i in 2:20) {
		factors <- factorize(i)
		factors <- as.numeric(factors)
		factorCounts = list()
		for (j in factors) {
			inList <- as.character(j) %in% names(factorCounts)
			if (!inList) factorCounts[as.character(j)] = 0
			factorCounts[as.character(j)] = as.numeric(factorCounts[as.character(j)]) + 1
		}
		for (j in factors) {
			inList <- as.character(j) %in% names(multiplicands)
			if (!inList) multiplicands[as.character(j)] = 0
			multiplicands[as.character(j)] = max(as.numeric(factorCounts[as.character(j)]),
												 as.numeric(multiplicands[as.character(j)]))
		}
	}

	minValue = 1
	for (j in names(multiplicands)) {
		minValue <- minValue * pow.bigz(as.numeric(j), multiplicands[[j]])
	}
	return(minValue)
}

