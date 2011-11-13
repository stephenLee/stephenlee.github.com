#!/usr/bin/env bash

# push scripts for this site

message=`date +"%Y-%m-%d-%T"`
message+=commit
git add .
git commit -a -m 'message'
git push -u origin master
