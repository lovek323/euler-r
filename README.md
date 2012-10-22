Project Euler in R
==================

Dependencies
------------
* RUnit

Running the tests
-----------------
> Rscript test.R

Directory/file structure
------------------------
The directory structure is as follows: 

**docs/XXXX.md**

<code>docs/XXXX.md</code> is a markdown file that contains the actual problem
definition (from Project Euler) and any documentation I thought might be helpful
for those looking at the code.

**src/XXXX.R**

<code>src/XXXX.R</code> must contain a function called <code>problemX</code>
(problem1, problem99, etc.) that returns the desired result (i.e., the answer to
the problem).

**tests/XXXX.R**

<code>tests/XXXX.R</code> is an R source file which must contain a function
called <code>tests.problemX</code> (test1, test99, etc.) that tests the result 
of the <code>problemX</code> function for correctness.

To have the test run as part of the RUnit test suite, this test must be added to
the test suite in <code>test.R</code> in the root directory.

We have provided a function, <code>test.wrapper</code>, to encapsulate testing
the correctness of the result and the time taken to get the result (Project
Euler specifies that this should be less than one minute).

Further reading
---------------

**RUnit**

Check this out: [Unit Testing in R: The Bare Minimum](http://www.johnmyleswhite.com/notebook/2010/08/17/unit-testing-in-r-the-bare-minimum/)

