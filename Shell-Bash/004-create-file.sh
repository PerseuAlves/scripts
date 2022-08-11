#!/bin/bash

# returns 0 if the file "text.txt" was created 
# in a folder named "/tmp" in the current directory

mkdir ./tmp && cd ./tmp && touch text.txt && echo "file created" && exit 0

echo "error"
exit 1