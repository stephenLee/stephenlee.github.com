#!/usr/bin/env bash

# push scripts for this site

message=`date +"%Y-%m-%d-%T"`

git add . 

git commit -a -m ${message}

git push -u origin master
