#!/bin/bash

now=$(date +"%d-%m-%Y-%S")
echo "checking repo status...."
git status;
echo "adding all changed files...."
git add .;
echo "commiting changes....."
git commit -m "$now";
echo "pushing to git repo...."
git push -u origin master;


