library('RUnit')

test.wrapper <- function(correctValue, actualValue) {
	startTime <- as.numeric(Sys.time())
	# check that we have solved the problem correctly
	checkEquals(correctValue, actualValue)
	endTime <- as.numeric(Sys.time())
	# check that we have taken less than 60 seconds to solve the problem
	checkTrue(endTime - startTime < 60)
}

test.suite <- defineTestSuite("main",
							  dirs = file.path("tests"),
							  testFileRegexp = '^[0-9]{1,}\\.R$')
isValidTestSuite(test.suite)
runTestSuite(test.suite);

