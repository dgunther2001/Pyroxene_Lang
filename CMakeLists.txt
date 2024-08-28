#MIT License
#Copyright (c) 2024 Daniel Gunther

#For the full license text, see the LICENSE.txt file in the docs directory.
#If LICENSE.txt is not included, this version of the source code is provided in breach of this license.

#******************************************************

cmake_minimum_required(VERSION 3.15)
project(pyroxene_lang)

set(CMAKE_CXX_STANDARD 17)

find_package(LLVM REQUIRED CONFIG)

include_directories(${LLVM_INCLUDE_DIRS})

add_definitions(${LLVM_DEFINITIONS})

# Detect host architecture and map LLVM components accordingly
if(LLVM_TARGETS_TO_BUILD STREQUAL "X86" OR LLVM_TARGETS_TO_BUILD MATCHES "X86")
    llvm_map_components_to_libnames(LLVM_LIBS core orcjit X86CodeGen X86AsmParser X86Desc X86Info)
elseif(LLVM_TARGETS_TO_BUILD STREQUAL "AArch64" OR LLVM_TARGETS_TO_BUILD MATCHES "AArch64")
    llvm_map_components_to_libnames(LLVM_LIBS core orcjit AArch64CodeGen AArch64AsmParser AArch64Desc AArch64Info)
elseif(LLVM_TARGETS_TO_BUILD STREQUAL "ARM" OR LLVM_TARGETS_TO_BUILD MATCHES "ARM")
    llvm_map_components_to_libnames(LLVM_LIBS core orcjit ARMCodeGen ARMAsmParser ARMDesc ARMInfo)
else()
    message(FATAL_ERROR "Unsupported architecture: ${LLVM_TARGETS_TO_BUILD}")
endif()

add_subdirectory(include)
add_subdirectory(src)

option(BUILD_DEBUG_DRIVER "Build the debug test driver instead of the main driver" OFF) # MAKE A CMD LINE ARG LATER!!!

if(BUILD_DEBUG_DRIVER)
    add_definitions(-DDEBUG_MODE=1)
    add_executable(driver 
        unit_tests/unit_test_driver.cpp
        unit_tests/lexer_tests/lexer_tests.cpp
        src/lexer.cpp src/parser.cpp src/ast.cpp src/codegen.cpp src/type_checker.cpp src/utility.cpp
    )
    target_link_libraries(driver ${LLVM_LIBS})
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
    target_link_libraries(driver ${LLVM_LIBS})
endif()

