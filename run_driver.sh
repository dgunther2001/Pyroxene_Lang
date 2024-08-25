#MIT License
#Copyright (c) 2024 Daniel Gunther

#For the full license text, see the LICENSE.txt file in the docs directory.
#If LICENSE.txt is not included, this version of the source code is provided in breach of this license.

#******************************************************

#!/usr/bin/env bash

IMAGE_NAME="pyroxene"

if [ $# -eq 0 ]; then 
    echo "Not enough arguments passed."
elif [ $# -eq 1 ]; then 
    FILE_PATH="$1"
    docker build --build-arg DEBUG_MODE=OFF -t $IMAGE_NAME .
    docker run --rm $IMAGE_NAME ${FILE_PATH}
else
    echo "Too many arguments passed."
fi