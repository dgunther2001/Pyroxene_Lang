#!/usr/bin/env bash

IMAGE_NAME="pyroxene_lldb"

if [ $# -eq 0 ]; then 
    echo "Not enough arguments passed."
elif [ $# -eq 1 ]; then 
    FILE_PATH="$1"
    docker build -t $IMAGE_NAME -f Dockerfile.debug .
    docker run --rm -it $IMAGE_NAME ${FILE_PATH}
else
    RED='\033[1;31m'
    echo "${RED}Too many arguments passed. Expected 1 .pyrx file${NC}"
fi