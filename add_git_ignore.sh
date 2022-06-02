#!/bin/bash

echo "enter file to ignore"
read ignore
echo $ignore >> .gitignore
  
$ git rm --cached $ignore
rm '$ignore'