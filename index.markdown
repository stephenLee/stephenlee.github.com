---
layout	: main 
title	: Home
sectin	: Home
feed	: /atom.xml
---

<img class='inset right' src='/files/css/lee.jpg' title='Stephen lee' alt='Stephen lee' width='200px' />

Welcome
=======

I'm Stephen Lee, a second year graduate student at [Dalian University of Technology](http://www.dlut.edu.cn) (China).
I will use this site to host my blog. You can find out more about me by poking around the 
links above and below.

Blog
====

[![feed icon](/files/css/feed-icon-14x14.png){:title="Atom feed of recent posts" .right}][feed]
A [feed][] of the most recent posts is available.

[feed]: /atom.xml

Recent posts
------------
{% for post in site.posts limit:5 %}
<div class="section list"> 
<h1> {{ post.date | date_to_string }}</h1>
<p class="line">
	<a class="title" href="{{ post.url }}">{{ post.title }}</a>
   <a class="comments" href="{{ post.url }}#disqus_thread">View Comments</a>
</p>
<p class="excerpt">
	{% if post.excerpt %}
		{{ post.excerpt}}
	{% else %}
		{{ post.content | html_truncate }}
	{% endif %}
</p>
</div>
{% endfor %}

<script type="text/javascript">
//<![CDATA[
(function() {
		var links = document.getElementsByTagName('a');
		var query = '?';
		for(var i = 0; i < links.length; i++) {
			if(links[i].href.indexOf('#disqus_thread') >= 0) {
				query += 'url' + i + '=' + encodeURIComponent(links[i].href) + '&';
			}
		}
		document.write('<script charset="utf-8" type="text/javascript" src="http://disqus.com/forums/stephenleespage/get_num_replies.js' + query + '"></' + 'script>');
	})();
//]]>
</script>
 
The rest, you can find in [the archives](/archives/).
