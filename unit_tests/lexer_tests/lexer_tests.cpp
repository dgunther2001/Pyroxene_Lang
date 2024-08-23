/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#include "../../include/lexer/lexer.h"
#include <iostream>

static void print_individual_token(int token) {

    switch (token) {
        case tok_eof:
            std::cout << "Token EOF" << "\n";
            break;
        case tok_semicolon:
            std::cout << "Token Semicolon" << "\n";
            break;
        case tok_int:
            std::cout << "Token int\n";
            break;
        case tok_float:
            std::cout << "Token float\n";
            break;
        case tok_bool:
            std::cout << "Token bool\n";
            break;
        case tok_char:
            std::cout << "Token char\n";
            break;
        case tok_string:
            std::cout << "Token string\n";
            break;
        case tok_identifier:
            std::cout << "Token Identifier: " <<  identifier << "\n";
            break;
        default:
            std::cout << "Unknown Token\n";
            break;
    }
}




