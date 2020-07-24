#!/bin/sh


git add -A
git commit -m "update"
echo -n INPUT_BRANCH_NAME : 
read branchName
git push -u origin $branchName
