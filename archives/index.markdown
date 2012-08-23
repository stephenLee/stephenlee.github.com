---
layout  : main
title   : Archives
section : Past
feed    : /atom.xml
---

Archives
========

This is the complete archive of posts at *[Stephen Lee](/)* in
reverse chronological order.

{% for post in site.posts %}
{% capture curryear %}{{post.date | date:'%Y'}}{% endcapture %}
{% capture currmonth %}{{post.date | date:'%Y-%m'}}{% endcapture %}
<div class="section list">
  <h1>{% if currmonth != month %}<a name="{{ currmonth }}">{% endif %}
	{% if curryear != year %}<a name="{{ curryear }}">{% endif %}
	{{ post.date | date_to_string }}
	{% if currmonth != month %}</a>{% endif %}
	{% if curryear != year %}</a>{% endif %}
  </h1>
  <p class="line">
    <a class="title" href="{{ post.url }}">{{ post.title }}</a>
	 <a class="comments" href="{{ post.url }}#disqus_thread">View Comments</a>
  </p>
  <p class="excerpt">
    {% if post.excerpt %}
       	{{ post.excerpt }}
    {% else %}
        {{ post.content | html_truncate }}
    {% endif %}
 </p>
</div>
{% assign year = curryear %}{% assign month = currmonth %}{% endfor %}

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
		document.write('<script type="text/javascript" src="http://disqus.com/forums/markreid/get_num_replies.js' + query + '"></' + 'script>');
	})();
//]]>
</script>
