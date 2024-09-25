/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/

#ifndef UTILITY_H
#define UTILITY_H

#include <string>
#include <iostream>
#include "../parser/parser.h"
#include "../lexer/lexer.h"
#include "../ast/ast.h"
#include "../codegen/codegen.h"

#define PARSER_PRINT_UTIL 0

namespace utility {

    extern void driver_extension_error(const std::string& message, const std::string& file_name);
    extern void driver_args_error(const int num_args);
    extern void lexer_error(const std::string& message, int line);
    extern void parser_error(const std::string& message, int line);
    extern void codegen_error(const std::string& message, int line);
    extern void output_current_token();
    extern void initialize_operator_precendence();

    extern void init_llvm_mods();

    extern void primary_driver_loop();

    extern void end_llvm_mods();

}

#endif