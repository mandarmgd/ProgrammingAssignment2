Solution to Programming Assignment 2 (Lexical Scoping) asked in the course "R programming" provided by Johns Hopkins University: https://www.coursera.org/learn/r-programming

The problem is to cache the inverse of a matrix. Its purpose is to show how the scoping rules of R can be manipulated to preserve state inside of an R object. It consists of two functions: 'makeCacheMatrix' and 'cacheSolve'. 

'makeCacheMatrix' returns a special 'matrix' which is a list containing a function to 
1) Set the value of the matrix
2) get the value of the matrix
3) set the value of its inverse
4) get the value of its inverse

'cacheSolve' then uses this special 'matrix' and calculates its inverse in case it hasn't already been calculated. Otherwise, it gets the inverse from the cache and thus skips the computation. 





