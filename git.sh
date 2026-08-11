#!/bin/bash

DIR="/home/ubuntu/automatic-github-push"

cd "$DIR" || exit 1

count=1

while [ -f "file$count.txt" ]
do
    ((count++))
done

touch "file$count.txt"

echo "Created: file$count.txt"
