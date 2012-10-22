problem1 <- function() {
	mults3 <- 3*1:(999/3)
	mults5 <- 5*1:(999/5)
	mults35 <- sort(unique(c(mults3, mults5)))

	return(Reduce("+", mults35))
}

problem1()

