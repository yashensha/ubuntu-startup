#!/bin/bash

now=$(date +"%d-%m-%Y-%S")
echo "checking repo status...."
git status;
echo "adding all changed files...."
git add .;
echo "commiting changes....."
git commit -m "$now";
echo "pushing to git repo...."
git push;


$token = "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"


echo "all execution completed"