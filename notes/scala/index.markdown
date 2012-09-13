---
title: Scala 
section: Notes
layout: main

---
Scala
========

## Tail Recursion ##
If the last action of the function is a call to another(possibly the same) 
funtion, only a single stack frame is needed for both functions. Such calles 
are called "tail calls". In priciple, tail calls can always reuse the stack 
frame of the calling function.

* factorial function non tail recursion:

  `def factorial(n: Int): Int = if (n==0) 1 else n * factorial(n-1)`

* A tail-recursive version of factorial:

   <script src="https://gist.github.com/3714308.js"> </script>
   
  

