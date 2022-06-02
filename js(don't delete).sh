#!/bin/bash
echo "Enter project name"
read name
mkdir $name;
cd $name;
touch index.html;
touch style.css;
touch script.js;
code .;

echo "all execution completed"
