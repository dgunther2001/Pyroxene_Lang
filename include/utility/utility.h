/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#ifndef UTILITY_H
#define UTILITY_H

#include <string>
#include <iostream>

namespace utility {

    extern void driver_extension_error(const std::string& message, const std::string& file_name);
    extern void driver_args_error(const int num_args);
    extern void lexer_error(const std::string& message, int line);
    extern void parser_error(const std::string& message, int line);

}

#endif