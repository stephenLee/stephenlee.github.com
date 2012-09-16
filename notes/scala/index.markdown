---
title: Scala 
section: Notes
layout: main

---
Scala
========
## val & var ##
Scala has two kinds of variables, vals and vars. A val is similar to a final variable in 
Java. Once initialized, a val can never be reassigned. On the contrary,A var can be reassigned.
## type interface ##
When the scala interpreter can infer types, it is often best to let it do so rather 
than fill the the code with unnecessary, explicit type annotations.

`scala> val msg = "Hello World!"`

`msg: java.lang.string = Hello, world`
## ##

If a function is recursive, you must explicitly specify the function's result type.

## Tail Recursion ##
If the last action of the function is a call to another(possibly the same) 
funtion, only a single stack frame is needed for both functions. Such calles 
are called "tail calls". In priciple, tail calls can always reuse the stack 
frame of the calling function.

* factorial function non tail recursion:

  <script src="https://gist.github.com/3714379.js"> </script>

* A tail-recursive version of factorial:

   <script src="https://gist.github.com/3714308.js"> </script>
   
  

