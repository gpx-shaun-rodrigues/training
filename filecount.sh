#!/bin/sh
EXTENSION=$1
DIRECTORY=${2:-.}

WILDCARD_PATH="$DIRECTORY/*.$EXTENSION"
COUNT=0

for file in $WILDCARD_PATH; do
    if [ -f "$file" ]; then
        COUNT=$((COUNT+1))
    fi
done

echo "No. of files with extension .$EXTENSION in the $DIRECTORY: $COUNT"