#!/bin/bash

# display the number of files 
# in the received directories.

# colors
NC='\033[0m'
BRED='\033[1;31m' 
BGREEN='\033[1;32m'

function file_count() {
    echo -e "\n——— $(basename $1)\n   | $(ls $1 | wc -l)"
}

if [ -z "$1" ]; then
    echo -e "\n${BRED}empty parameters${NC}"
    exit 2
else
    for FILE in $@; do
        if [ -d ${FILE}  ]; then
            file_count $FILE
        else
            echo -e "\n——— ${BRED}invalid param${NC}\n   |"
        fi
    done

    echo -e "\n${BGREEN}Done!${NC}"
    exit 0
fi

exit 1