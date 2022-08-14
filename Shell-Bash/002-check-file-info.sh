#!/bin/bash

# check file(s) info

# colors
NC='\033[0m'
BRED='\033[1;31m' 
BGREEN='\033[1;32m'

if [ -z "$1" ]; then
    echo -e "\n${BRED}empty parameter${NC}"
    exit 2
else
	COUNT=0

	for FILE in $@; do
		COUNT=$(( ${COUNT} + 1 ))

		if [ -e ${FILE} ]; then
			echo -e "\nfile ${COUNT}:\n\n   file exists"

			if [ -d ${FILE}  ]; then
				echo "   file is a directory"
			fi

			if [ -s ${FILE}  ]; then
				echo "   file is not empty"
			fi

			if [ -r ${FILE}  ]; then
				echo "   file is readable"
			fi

			if [ -w ${FILE}  ]; then
				echo "   file is writable"
			fi

			if [ -x ${FILE}  ]; then
				echo "   file is executable"
			fi

			echo -e "\n   additional info:\n"

			echo "      $(ls -l ${FILE})"
		else
			echo -e "\nfile ${COUNT}:\n\n${BRED}   file doesn't exists${NC}"
		fi
	done
fi

echo -e "\n${BGREEN}Done!${NC}"
exit 0
