#!/bin/bash

echo "Command sent: $*" &>2
echo "First argument: $1" &>2

if [ "$1" = "serve" ]; then
    echo "Run serve mode" 
elif [ "$1" = "produce" ]; then

    mkdocs build -f /input_dir/mkdocs.yml
    tar -czf docs.tar.gz site
    cat docs.tar.gz
    
fi