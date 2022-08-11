#!/bin/bash

# returns 0 if it was a successful operation, 
# returns 1 if it was a failed operation
# returns 2 if it was a failed operation that was not expected

HOST="google.com"

ping -c 1 $HOST

if [ "$?" -eq "0" ]
then
    echo ""
    echo "$HOST reachable."
    exit 0
else
    echo ""
    echo "$HOST unreachable."
    exit 1
fi

exit 2