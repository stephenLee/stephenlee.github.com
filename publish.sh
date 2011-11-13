#!/usr/bin/env bash

# push scripts for this site

message=echo `date +"%Y-%m-%d-%T"`
let message+=commit
git add .
git commit -a -m '$message'
git push -u origin master
