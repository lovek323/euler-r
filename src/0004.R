problem4 <- function() {
	maxPalindrome = 0
	for (i in 100:999) {
		# we have already tried all multiplications of i and integers in 1:i
		for (j in i:999) {
			foo = i * j
			# no need to test whether we have a palindrome if it's smaller than
			# our current max
			if (foo <= maxPalindrome) next
			if (isPalindrome(foo)) maxPalindrome = foo
		}
	}
	return(maxPalindrome)
}

isPalindrome <- function(foo) {
	foo <- as.character(foo)
	foo <- strsplit(foo, "")
	foo <- foo[[1]]
	oof <- rev(foo)
	bar <- length(foo)

	if (bar %% 2 == 0) bar <- bar / 2
	else bar <- (bar + 1) / 2

	for (i in 1:bar) if (foo[i] != oof[i]) return(FALSE)

	return(TRUE)
}

