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
## General rules ##

* If a function is recursive, you must explicitly specify the function's result type.
* if a object defines an **apply** method call, any application of an object to some
arguments in parentheses will be transformed to an **apply** method call.
* if a method is used in operator notation, the method is invoked on the **left** operand.

  `a * b == a.*(b)`
  
  if the method name ends in a colon, the method is invoked on the **right**
  operand.
  
  `1 :: twoThree = twoThree.::(1)`
* Prefer vals, immutable objects and methods without side effects. Reach for them first,
  Use vars, mutable objects and methods with side effects when you have a specific
  need and justification for them.
*  Method parameters in Scala are **vals** not **vars**.
* Any method can be an operator.

## Functional objects ##
* precondition: a constraint on values passed into a method or constructor. (use ** require**)
* auxiliary constructors: constructors other than the primary constructor. ( ** def this(...)**) Every constructor invocation in Scala will end up eventially calling the 
primary constructor of the class. The primary constructor is the single point of entry of a class. A Rational class demo:

<script src="https://gist.github.com/3735803.js"> </script>

## Singleton objects ##
**companion object** and **companion class**  share the same name in the same 
source file. They can access each other's private memebers. A singleton object that
does not share the same name with a companion class is called a **standalone object**.

## Tail Recursion ##
If the last action of the function is a call to another(possibly the same) 
funtion, only a single stack frame is needed for both functions. Such calles 
are called "tail calls". In priciple, tail calls can always reuse the stack 
frame of the calling function.

* factorial function non tail recursion:

  <script src="https://gist.github.com/3714379.js"> </script>

* A tail-recursive version of factorial:

   <script src="https://gist.github.com/3714308.js"> </script>
   
  
   
  

