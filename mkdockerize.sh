#!/bin/bash

docker run -v $(pwd)/mkdoc_local:/input_dir mkdocs:0.0.1 produce > docs.tar.gz