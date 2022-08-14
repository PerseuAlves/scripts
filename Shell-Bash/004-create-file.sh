#!/bin/bash

# returns 0 if the file "text.txt" was created 
# in a folder named "/tmp" in the current directory

# colors
NC='\033[0m'
BRED='\033[1;31m' 
BGREEN='\033[1;32m'

mkdir ./tmp && cd ./tmp && touch text.txt && echo "file created" && cd ../ && echo -e "\n${BGREEN}Done!${NC}" && exit 0

echo -e "\n${BRED}unexpected error${NC}"
exit 1