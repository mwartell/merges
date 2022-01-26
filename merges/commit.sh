#!/usr/bin/bash


git checkout posion
count=$(wc -l poison.txt)
echo $count $(date) >> posion.txt
git add -A

echo "commit: creating poison commit $count"

git commit -m "posion commit $count"
