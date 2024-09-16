#MIT License
#Copyright (c) 2024 Daniel Gunther

#For the full license text, see the LICENSE.txt file in the docs directory.
#If LICENSE.txt is not included, this version of the source code is provided in breach of this license.

#******************************************************

FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    clang \
    libc++-dev \
    libc++abi-dev \
    cmake \
    llvm \
    llvm-dev \
    libllvm14 \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /

COPY . .

ARG DEBUG_MODE

ARG FILE_PATH

RUN mkdir build && cd build && \
    cmake -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_CXX_FLAGS="-stdlib=libc++" -DBUILD_DEBUG_DRIVER=${DEBUG_MODE} .. && \
    make

ENTRYPOINT ["./build/driver"]

CMD ["./test_files/test_1.pyrx"]