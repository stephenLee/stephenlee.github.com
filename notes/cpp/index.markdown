---
title: Cpp 
section: Notes
layout: main

---

Cpp
========

## Template ##

### “undefined reference” to a template class function  ###
Template declarations and implementation need to be visible in the
same translation unit. The implementation(definition) of a template
class or function must be in the same file as its declaration.
