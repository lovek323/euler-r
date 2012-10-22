Project Euler in R
==================

Dependencies
------------
* RUnit

Directory/file structure
------------------------
The directory structure is as follows: 

Top-level directory: four-digit problem number (e.g., 0001), within which are
three files, <code>README.md</code>, <code>main.r</code> and
<code>test.r</code>.

**README.md**

<code>README.md</code> is a markdown file that contains the actual problem
definition (from Project Euler) and any documentation I thought might be helpful
for those looking at the code.

**main.r**

<code>main.r</code> must contain a function called <code>problemX</code>
(problem1, problem99, etc.) that returns the desired result (i.e., the answer to
the problem).

**test.r**

<code>test.r</code> is an R source file which must contain a function called
<code>testX</code> (test1, test99, etc.) that tests the result of the
<code>problemX</code> function for correctness.

