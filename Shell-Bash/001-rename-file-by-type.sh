#!/bin/bash

# rename all files ending in *${TYPE}
# appending today's date to the original filename

TYPE=$1 # check the type of the file by passing it by parameter

FILES=$(ls *${TYPE})
DATE=$(date +%F)

for FILE in $FILES
do
	echo "renaming ${FILE} to ${DATE}-${FILE}"
	mv ${FILE} ${DATE}-${FILE}
done
