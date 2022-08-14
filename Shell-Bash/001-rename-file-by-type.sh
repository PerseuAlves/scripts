#!/bin/bash

# rename all files ending in *${TYPE}
# appending today's date to the original filename

# colors
NC='\033[0m'
BRED='\033[1;31m' 
BGREEN='\033[1;32m'

TYPE=$1

if [ -z "${TYPE}" ]; then
    echo -e "\n${BRED}empty parameter${NC}"
    exit 2
else
	FILES=$(ls *${TYPE})

	if [ "$?" -ne "0" ]; then
		echo -e "\n${BRED}invalid parameter${NC}"
    	exit 3
	else
		DATE=$(date +%F)

		for FILE in ${FILES}; do
			echo "renaming ${FILE} to ${DATE}-${FILE}"
			mv ${FILE} ${DATE}-${FILE}
		done

		echo -e "\n${BGREEN}Done!${NC}"
		exit 0
	fi
fi
