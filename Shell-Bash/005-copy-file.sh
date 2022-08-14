#!/bin/bash

# creates a backup of a file in a folder named "bak"
# by passing the filename as a parameter.

# colors
NC='\033[0m'
BRED='\033[1;31m'
BGREEN='\033[1;32m'

function create_folder () {
    local FOLDER_NAME="bak"

    if [ -d ./bak  ]; then
        return 0
    else
        mkdir $FOLDER_NAME
    fi
}

function backup_file () {
    if [ -f "$1" ]; then
        create_folder

        if [ $? -eq "0" ]; then
            local BACKUP_FILE="./bak/$(basename ${1})_$(date +%F)_$$"

            echo "backing up $1 to ${BACKUP_FILE}"
            cp $1 $BACKUP_FILE
        else
            return 2
        fi
    else
        return 1
    fi
}

backup_file $1

if [ $? -eq "0" ]; then
    echo -e "backup succeeded!\n\n${BGREEN}Done!${NC}"
    exit 0
else
    echo -e "backup failed!\n\n${BRED}unexpected error${NC}"
    exit 2
fi
