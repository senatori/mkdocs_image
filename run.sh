#!/bin/bash

echo "Command sent: $*" &>2
echo "First argument: $1" &>2

if [ "$1" = "serve" ]; then
    echo "Run serve mode" 
    mkdir serve_dir
     tar -xzf - -C serve_dir
    echo "Starting server"
    cd serve_dir
    mkdocs serve --dev-addr 0.0.0.0:8000
    mkdocs serve -f serve_dir/mkdocs.yml -a
elif [ "$1" = "produce" ]; then

    mkdocs build -f /input_dir/mkdocs.yml
    tar -czf docs.tar.gz site
    cat docs.tar.gz
    
fi