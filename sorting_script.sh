#!/bin/bash
cd /root/Desktop/host/P2/P2/Problem1
mkdir -p odd even
for file in *; do
    if [ -f "$file" ]; then
        #searches the file name for one or more digits from 0-9 and takes only the last one
        index=$(echo "$file" | grep -Eo '[0-9]+' | tail -n1)
        #checks if the index is even or odd
        if [[ $((index % 2)) -eq 0 ]]; then
            mv "$file" even/
        else
            mv "$file" odd/
        fi
    fi
done