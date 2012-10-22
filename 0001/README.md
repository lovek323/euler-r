Problem 1
---------

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get
3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the
multiples of 3 or 5 below 1000.

> **2.1 Vectors and assignment**
> 
> R operates on named *data structures*. The simplest structure is the numeric
> *vector*, which is a single entity consiting of an ordered collection of
> numbers. To set up a vector named <code>x</code>, say, consisting of five
> numbers, namely 10.4, 5.6, 3.1, 6.4 and 21.7, use the R command
> 
>     x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
> 
> This is an *assignment* statement using the *function* <code>c()</code>
> which in this context can take an arbitrary number of vecotr *arguments* and
> whose value is a vector got by concatenating its arguments end to end.
> 
> A number occurring by itself in an expression is taken as a vector of length
> one.
> 
> Notice that the assignment operator ('<code>&lt;-</code>'), which consists of
> the two characters '<code><</code>' ("less than") and '<code>-</code>'
> ("minus") occurring strictly side-by-side and it 'points' to the object
> receiving the value of the expression. In most contexts the '<code>=</code>'
> operator can be used as an alternative. Assignment can also be made using the
> function <code>assign()</code>. An equivalent way of making the same
> assignment as above is with:
> 
>     assign("x", c(10.4, 5.6, 3.1, 6.4, 21.7))
> 
> The usual operator, <code>&lt;-</code>, can be thought of as a syntactic
> short-cut to this.
> 
> Assignments can also be made in the other direction, using the obvious change
> in the assignment operator. So the same assignment could be made using
> 
>     c(10.4, 5.6, 3.1, 6.4, 21.7) -> x
> 
> If an expression is used as a complete command, the value is printed *and
> lost*. So now if we were to use the command
> 
>     1/x
> 
> the reciprocals of the five values would be printed at the terminal (and the
> value of <code>x</code>, of course, unchanged).
> 
> The further assignment
> 
>     y <- c(x, 0, x)
> 
> would create a vector <code>y</code> with 11 entries consisting of two copies
> of <code>x</code> with a zero in the middle place.

> **2.3 Generating regular sequences**
> 
> R has a number of facilities for generating commonly used sequences of
> numbers. For example <code>1:30</code> is the vector <code>c(1, 2, ..., 29,
> 30)</code>. The colon operator has high priority within an expression, so, for
> example <code>2*1:15</code> is the vector <code>c(2, 4, ..., 28, 30). Put
> <code>n &lt;- 10</code> and compare the sequences <code>1:n-1</code> and
> <code>1:(n-1)</code>.
> 
> [http://cran.r-project.org/doc/manuals/R-intro.html](http://cran.r-project.org/doc/manuals/R-intro.html)

