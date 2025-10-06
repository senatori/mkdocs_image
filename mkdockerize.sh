#!/bin/bash

# To Produce

docker run -v $(pwd)/mkdoc_local:/input_dir mkdocs:0.0.1 produce > docs.tar.gz

# To serve
cat docs.tar.gz | docker run -i -p 8000:8000 mkdocs:0.0.1 serve