---
layout: post

title: A first taste on redis using python client

excerpt: python with redis 
 
---

I write a small robot to collect popular machine learning topics and discussions at Reddit, and then post these reddits to a social network web site in my country. I don't want to store those messages, so it's simple. But I need to store reddit_id, I can judge whether I need to post this message through reddit_id. Reddit_id is unique, the same id implies the same message. It's not interesting to post the same message. It's unfriendly  for your followers. Relational database is complex, not very flexible. NoSql may be suited for this. I have heared redis a lot, famous for its efficient. I plan to try it.

Redis has numerous [clients](http://redis.io/clients), like python, C++, ruby, scala. I love python. and I need to store objects in Redis. Lucky enough, there is a project about this. It's called [redisco](https://github.com/kiddouk/redisco). I'll breifly introduce how to use it.

## Installing ##

* Install redis

Just download the [source code](http://redis.googlecode.com/files/redis-2.6.4.tar.gz) and make, very easy.

* Install redisco

redisco requires redis-py

    sudo pip install redis
    sudo pip install redisco
make sure no errors when install.

## Connecting to Redis ##

Launch Redis:

    redis-server
It'll use default configuration.

    (host='localhost', port=6379, db=0)

## How to use it ##

First, let's define our model:

    from redisco import models

    class RedditDB(models.Model):
        """Models an reddit entry with id and date."""
        reddit_id = models.Attribute(required=True)
        created_at = models.DateTimeField(auto_now_add=True)
 
The *Attribute* store unicode strings.

Second, save some data:

    item = RedditDB(reddit_id = '1234')
    item.save()
    
Third, query the data:

    reddits = RedditDB.objects.all()
    [reddit.reddit_id for reddit in reddits]
    reddit = RedditDB.objects.filter(reddit_id='1234')
 
Last, delete all objects:

    reddits = RedditDB.objects.all()
    [reddit.delete for reddit in reddits]

There are some advanced operations about redisco, you can refer to it's [documentation](https://readthedocs.org/projects/redisco/)

