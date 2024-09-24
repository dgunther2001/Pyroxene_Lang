#MIT License
#Copyright (c) 2024 Daniel Gunther

#For the full license text, see the LICENSE.md file in the root directory.
#If LICENSE.md is not included, this version of the source code is provided in breach of this license.

#******************************************************

cmake_minimum_required(VERSION 3.15)
project(pyroxene_lang)

set(CMAKE_CXX_STANDARD 17)

# Find and configure LLVM
find_package(LLVM 14 REQUIRED CONFIG)
include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})


if(NOT DEFINED ENV{LLVM_ARCH})
    message(FATAL_ERROR "LLVM_ARCH environment variable not set.")
endif()

set(LLVM_ARCH $ENV{LLVM_ARCH})

if(LLVM_ARCH STREQUAL "X86")
    llvm_map_components_to_libnames(LLVM_LIBS core orcjit X86)
elseif(LLVM_ARCH STREQUAL "AArch64")
    llvm_map_components_to_libnames(LLVM_LIBS core orcjit AArch64)
elseif(LLVM_ARCH STREQUAL "ARM")
    llvm_map_components_to_libnames(LLVM_LIBS core orcjit ARM)
else()
    message(FATAL_ERROR "Unsupported architecture: ${LLVM_ARCH}")
endif()

add_subdirectory(include)
add_subdirectory(src)

option(BUILD_DEBUG_DRIVER "Build the debug test driver instead of the main driver" OFF) # MAKE A CMD LINE ARG LATER!!!

if(BUILD_DEBUG_DRIVER)
    add_definitions(-DDEBUG_MODE=1)
    add_executable(driver 
        debug_test_suite/unit_test_driver.cpp
        debug_test_suite/lexer_tests/lexer_tests.cpp
        src/lexer.cpp src/parser.cpp src/ast.cpp src/codegen.cpp src/type_checker.cpp src/utility.cpp
    )
else()
    add_definitions(-DDEBUG_MODE=0)
    add_executable(driver 
        src/driver.cpp 
        src/parser.cpp 
        src/lexer.cpp 
        src/ast.cpp 
        src/codegen.cpp 
        src/type_checker.cpp 
        src/utility.cpp
    )
endif()

target_link_libraries(driver ${LLVM_LIBS} pthread dl)

