#MIT License
#Copyright (c) 2024 Daniel Gunther

#For the full license text, see the LICENSE.txt file in the docs directory.
#If LICENSE.txt is not included, this version of the source code is provided in breach of this license.

#******************************************************

FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

ARG TARGETPLATFORM

ARG LLVM_ARCH="AArch64"

RUN if [ "$TARGETPLATFORM" = "linux/amd64" ]; then \
        export LLVM_ARCH="X86"; \
    elif [ "$TARGETPLATFORM" = "linux/arm64" ]; then \
        export LLVM_ARCH="AArch64"; \
    else \
        echo "Unsupported architecture: $TARGETPLATFORM"; exit 1; \
    fi

RUN apt-get update && apt-get install -y \
build-essential \
clang \
libc++-dev \
libc++abi-dev \
cmake \
llvm \
llvm-14-tools \
llvm-14-dev \
libllvm14 \
zlib1g-dev \
valgrind \
gdb \
vim \
git \
&& rm -rf /var/lib/apt/lists/*


WORKDIR /

COPY . .

RUN chmod -R +rx /test_files

ARG DEBUG_MODE

ARG FILE_PATH

RUN mkdir build && cd build && \
    cmake -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DBUILD_DEBUG_DRIVER=${DEBUG_MODE} .. && \
    make

ENTRYPOINT ["./build/driver"]

CMD ["./test_files/test_1.pyrx"]


### THIS RUNS VALGRIND, YOUR SAVIOR

#ENTRYPOINT ["valgrind", "--leak-check=full", "--track-origins=yes",  "./build/driver"]

#CMD ["./test_files/test_4.pyrx"]