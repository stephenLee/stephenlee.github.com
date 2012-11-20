---
layout: post

title: Execute python script on Crontab

excerpt: Execute python script on Crontab
 
 
 
---

I want to automatically run a python script in the background at regular intervals, So I refer to Crontab. I have heared crontab for a long time, however, I still make some mistakes. And I will take notes about it here. BTW, I find a really helpful material\[1\] about Crontab. 

* Make your script start with:

        #!/usr/bin/python
* Give execute permission to your script

        chmod a+x file.py
* Edit cron jobs

        sudo crontab -e
* Run this script every 30 minutes

        */30 * * * * /usr/bin/python /path/to/file.py
* Mailing the crontab output

        */30 * * * * /usr/bin/python /path/to/file.py 2>&1 | mail -s "Cron job ouput" yourmail@mail.com

 (2>&1 means store STDERR in STDOUT)
 
* See your Crontabs

         sudo crontab -l
    
**Reference:**

* \[1\]: [http://kvz.io/blog/2007/07/29/schedule-tasks-on-linux-using-crontab/] []
[http://kvz.io/blog/2007/07/29/schedule-tasks-on-linux-using-crontab/]: http://kvz.io/blog/2007/07/29/schedule-tasks-on-linux-using-crontab/

* \[2\]: [http://stackoverflow.com/questions/8727935/execute-python-script-on-crontab] []
[http://stackoverflow.com/questions/8727935/execute-python-script-on-crontab]: http://stackoverflow.com/questions/8727935/execute-python-script-on-crontab
