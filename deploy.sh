#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
cd public/
rm -rf $(ls|grep -v .git)
cd ../
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

git add .

# Go To Public folder
cd public
# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..

msg="update `date`"

git add .
git commit -m "$msg"
git push origin master
