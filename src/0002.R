problem2 <- function() {
	currentState <- c(1, 2)
	currentSum <- 2
	while (currentState[2] <= 4000000) {
		temp <- currentState[1]
		currentState[1] <- currentState[2]
		currentState[2] <- temp + currentState[2]
		if (currentState[2] %% 2 == 0)
			currentSum <- currentSum + currentState[2]
	}

	return(currentSum)
}

