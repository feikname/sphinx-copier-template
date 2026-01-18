#!/bin/bash
WATCH_DIR="./source"   # change this to the folder you want to watch

# Run once and keep watching for changes continuously
inotifywait -m -r -e modify,create,delete "$WATCH_DIR" |
while read -r directory events filename; do
    echo "Change detected: $events on $directory$filename"
    make html
done
