#!/bin/bash

# returns 0 if it was a successful operation, 
# returns 1 if it was a failed operation that was not expected
# returns 2 if it was a failed operation

# colors
NC='\033[0m'
BRED='\033[1;31m' 
BGREEN='\033[1;32m'

HOST="google.com"

ping -c 1 $HOST

if [ "$?" -eq "0" ]; then
    echo -e "\n$HOST reachable.\n\n${BGREEN}Done!${NC}"
    exit 0
else
    echo -e "\n$HOST unreachable.\n\n${BRED}unexpected error${NC}"
    exit 1
fi
