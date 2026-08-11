#!/bin/bash

# Go to project directory
cd /home/ubuntu/automatic-github-push || exit 1

# Find the next file number
COUNT=$(find . -maxdepth 1 -name "file*.txt" | wc -l)
NEXT=$((COUNT + 1))

# Create a new file
FILE="file${NEXT}.txt"
echo "Automatic file created on $(date)" > "$FILE"

echo "Created: $FILE"

# Git operations
git add .

git commit -m "Automatic update: $(date '+%Y-%m-%d %H:%M:%S')"

git push origin master

echo "GitHub push completed."
