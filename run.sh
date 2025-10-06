#!/bin/bash

echo "Command sent: $*" 
echo "First argument: $1" 

if [ "$1" = "serve" ]; then
    echo "Run serve mode" 
elif [ "$1" = "produce" ]; then
    echo "Run produce mode" 
    ls /input_dir
    
fi