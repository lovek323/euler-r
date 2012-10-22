# our input is larger than 2^32-1 (the maximum value for an integer in R, so we
# must use the `gmp' package
library('gmp')
# the lazy way out, I admit, but we can use the `factorize' function in the
# `sfsmisc' library to do most of the work for us
library('sfsmisc')

problem3 <- function() {
	input <- as.bigz(600851475143)
	factors <- factorize(input)
	return(factors[length(factors)])
}

