#!/usr/bin/bash
set -e

branch=$1

git checkout $branch
count=$(wc -l < poison.txt)
echo $count $(date) >> poison.txt
git add -A

echo "commit: creating $branch commit $count"

git commit -m "$branch commit $count"
