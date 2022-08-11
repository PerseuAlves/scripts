#!/bin/bash

# check file(s) info

#read -p "Enter a file name: " FILE # check the file by input its name
#FILE=$1 # check the file by passing it by parameter

for FILE in $@
do
	if [ -e ${FILE} ]
	then
		echo ""
		echo "--- BEGIN ---"

		echo ""

		echo "file exists"

		if [ -d ${FILE}  ]
		then
			echo "file is a directory"
		fi

		if [ -s ${FILE}  ]
		then
			echo "file is not empty"
		fi

		if [ -r ${FILE}  ]
		then
			echo "file is readable"
		fi

		if [ -w ${FILE}  ]
		then
			echo "file is writable"
		fi

		if [ -x ${FILE}  ]
		then
			echo "file is executable"
		fi

		echo ""

		echo "additional info:"
		echo ""

		ls -l ${FILE}
		
		echo ""
		echo "---- END ----"
	else
		echo ""
		echo "file doesn't exists"
	fi
done
