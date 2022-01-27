#!/usr/bin/bash
set -e

git branch
git checkout poison
count=$(wc -l poison.txt)
echo $count $(date) >> poison.txt
git add -A

echo "commit: creating poison commit $count"

git commit -m "posion commit $count"
