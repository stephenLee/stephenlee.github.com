---
layout	:  post 

title	:  Ubuntu下Latex中文书签乱码问题

exerpt 	:  Latex

---

今天在Ubuntu下用Latex做presentation时，中文书签出现乱码问题.
这个已经出现很多次了，一直没有解决.今天决定搞定它,于是google，找到一种
很好的[解决方法](http://www2.informatik.hu-berlin.de/~xu/cjk.html#fn.2)
可是编译后第二次又出现了乱码,不知什么原因。又google,找到了一种很简单的
方法,只需要改下导言:
 `\documentclass[hepreref={unicode}]{beamer}` 
Latex很强大，不过容易出错，只能慢慢积累经验了.
