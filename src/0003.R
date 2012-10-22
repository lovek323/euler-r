# our input is larger than 2^32-1 (the maximum value for an integer in R, so we
# must use the `gmp' package
suppressPackageStartupMessages(library('gmp'))

problem3 <- function() {
	input <- as.bigz(600851475143)
	factors <- factorize(input)
	return(factors[length(factors)])
}

