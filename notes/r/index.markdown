---
title: R 
section: Notes
layout: main

---
The R Language
========

# Data in R #
Three main varieties: numeric, character and logical. We can identify
what type of object using the **mode** function. For example:

`> name = 'michael'`

`> number = 100`

`> happy = TRUE`

`> mode(name)`

`[1] "character"`

`> mode(number)`

`[1] "numeric"`

`> mode(happy)`

`[1] "logical"`
# Vectors #
A vector is a collection of objects, all of the same mode, that can be
stored in a single variable, and accessed through subscripts. For
example:

`> v = c(1,2,3,4,5)`
The **c** function is short for catenate or combine, and it's used to
put individual values together into vectors. We can find the number of
elements in a vector using the **length** function.

Numerical subscripts in **R** start at 1, so the extract the first,
third,and fifth values of the **v** vector, we could use:

`> v[c(1,3,5)]`

`[1] 1 3 5`

If all of the subscripts of an object are negative, **R** will ignore
those values,and use just the remaining elements. To extract all the
elements of **v** except the first and last, use:

`> v[-c(1,5)]`

`[1] 2 3 4`

Some shortcuts to generate vectors.
**colon** operator

`> x = 1:10`

`> x`

` [1]  1  2  3  4  5  6  7  8  9 10`
**rep** function

`> rep(5,3)`

`[1] 5 5 5`

`> y = 3:7`

`> rep(y,3)`

` [1] 3 4 5 6 7 3 4 5 6 7 3 4 5 6 7`

`> rep(1:4,c(2,3,3,4))`

` [1] 1 1 2 2 2 3 3 3 4 4 4 4`

named vector

`taxrate = c(AL=4,CA=7.25,IL=6.25,KS=5.3,NY=4.25,TN=7)`

`> taxrate`

`  AL   CA   IL   KS   NY   TN `

`4.00 7.25 6.25 5.30 4.25 7.00 `
use the **names** function

`> taxrate = c(4,7.25,6.25,5.3,4.25,7)`

`> taxrate`

`[1] 4.00 7.25 6.25 5.30 4.25 7.00`

`> names(taxrate) = c('AL', 'CA','IL','KS','NY','TN')`

`> taxrate`

`  AL   CA   IL   KS   NY   TN `

`4.00 7.25 6.25 5.30 4.25 7.00 `

access the elements with either numeric subscripts or by using the
name of the element

`> taxrate[3]`

`IL`

`6.25`

`> taxrate['KS']`

`KS`

`5.3`

**which** function, converts between logical subscripts and numeric
  noes
which.max
which.min
system.time
rnorm: generate random numbers from the normal distribution with mean
  0 and standard deviation 1

# Modes and Classes #
try to combine objects of different modes using the **c** function.
**R** will find a common mode that can accomodate all the objects.

# Reading Vectors #

**scan** function

# Missing Values #

In **R**, missing values are represented by the string **NA**.

1.  Any computation involving a missing value will return a missing
value.
2.  Unlike other quantities in **R**, we can't directly test to see if
something is equal to a missing value with the equality operator
(==). We must use the buildin **is.na** function, which will return
**TRUE** if a value is missing and **False** otherwise.

how to solve?

**na.rm=TRUE** argument

# Matrices #

# Data Frames #

A data frame is like a matrix in that it represents a rectangular
array of data, but each column in a data frame can be of a different
mode.

data.frame
head
tail

sapply: simply operations that would require loops in other languages.

refer to the columns of a data frame:
1. Separate the data frame name from the variable name with a dollar
sign($)
2. treat the data frame like it was a matrix
3. use a character subscript
4. R provides a special subscripting method (double brackets [[]]) to
extract the actual data from the data frame.


# More on Data Frames #
1. If you want to extract more than one column of a data frame, you
need to use single brackets.
2. If the goal is to a add one or more new columns to a data frame,
you can combine a few operations into one using the **transform**
function. The first argument to **transform** is the name of the data
frame that will be used to construct the new columns. The remaining
arguments to **transform** are name/value pairs describing the new columns.

# Reading Data Frames from Files and URLs #

**read.table** function
A factor in **R** is a variable that is stored as an integer, but
displayed as a character string.
