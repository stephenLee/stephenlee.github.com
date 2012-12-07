---
layout: post

title: pretty print json

excerpt: pretty print json
---

# Pretty print json

JSON format is effective and lightweight for searilization. Many open platform services
use it. Today, when I craw some data from a web site, it returns a complex fragment of json data like [this](http://weibo.com/aj/mblog/mbloglist?_wv=5&profile_ftype=1&count=50&_k=135486386688066&uid=1920061532&_t=0&__rnd=1354863930022). It's unreadable and I can't figure out its formation. So I search the web and find
we can pretty print json data in three methods.

1.  A [webservice](http://jsonprettyprint.com/) called *jsonprettyprint* just does this job. Easy use and 

2.  Python distribution comes with a module [json.tool](http://stackoverflow.com/questions/352098/how-to-pretty-print-json-script) that does the job of formating json. 

        cat data.json | python -mjson.tool

3.  This [blog](http://irreal.org/blog/?p=354) introduces a method that I like most. 
It inspires method 2. Using Emacs edit the json file, and then selecting the code and type **[Ctrl+u Meta+|]**. The emacs minibuf will pop *Shell command on region* and then
type `python -mjson.tool`.


Above these three methods. I prefer to the third one. As I love Python and Emacs is my main editor. Hope this helps for you.
  
 