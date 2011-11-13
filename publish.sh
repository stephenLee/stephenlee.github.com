#!/usr/bin/env bash

# push scripts for this site

commit_time= echo `date +"%Y-%m-%d-%T"`

git add .
git commit -a -m 'commit_time+commit'
git push -u origin master
