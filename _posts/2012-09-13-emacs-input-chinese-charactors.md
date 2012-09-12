---
layout: post

title: Emacs24 can't input Chinese characters

excerpt: Emacs24 input Chinese characters

---

Some days ago, I installed Ubuntu12.04 as my new operating
system. Emacs24 has been released for a while, So 
I decide to try it and reconfigure my dot file. I  find
[eschulte](http://cs.unm.edu/~eschulte/)'s wonderful project
[emacs24-starter-kit](https://github.com/eschulte/emacs24-starter-kit).
It's organized so well and easy to customization that I choose it
immediately. Everything goes well, except that when I try to input Chinese
characters in Emacs, it doesn't work. But I can input Chinese
characters in the web browser. After search around the web, 
I find there exits two main problems.

1. I use Ibus input method, it's key binding Ctr-Space conflicted with
   Emacs's. As Ctr-Space is a very important key binding in Emacs, So
   I change Ibus's key to Shift-Space, but still conflicts. Thus just
   unset it. put this `(global-unset-key (kbd "S-Space"))` to your
   init file.
   
2. After the first procedure, it still can't input. I wonder and try
   [this](http://blog.csdn.net/pcliuguangtao/article/details/6264832) method.
   The reason is that my operating system is an English version. And I
   need to install Chinese language environment. Concrete method like this:
   
   * Look at the current language environment:
    `locale` 
    
   * Install zh_CN.utf8:
     `cd /usr/share/locales`
     `./install-language-pack zh_CN `
     
   * Edit /etc/environment and add this line:
     `LC_CTYPE="zh_CN.UTF-8"`
   
   * Reboot and It will be ok
   
Hope this can help others who met the same problem as I!
   

   
