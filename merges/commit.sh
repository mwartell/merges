#!/usr/bin/bash
set -e

git checkout $branch
count=$(wc -l < poison.txt)
echo $count $(date) >> posion.txt
git add -A

echo "commit: creating $branch commit $count"

git commit -m "$branch commit $count"
