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
        case tok_for:
            std::cout << "Token for\n";
            break;
        case tok_while:
            std::cout << "Token while\n";
            break;
        case tok_true:
            std::cout << "Token true\n";
            break;
        case tok_false:
            std::cout << "Token false\n";
            break;
        case tok_assignment:
            std::cout << "Token assignment\n";
            break;
        case tok_float_val:
            std::cout << "Token float value: "<< float_value << "\n";
            break;
        case tok_int_val:
            std::cout << "Token int value: "<< integer_value << "\n";
            break;
        case tok_string_val:
            std::cout << "Token string value: "<< string_value << "\n";
            break;
        case tok_char_val:
            std::cout << "Token character value: "<< char_value << "\n";
            break;
        case tok_comment:
            std::cout << "Token comment\n";
            break;
        case tok_open_paren:
            std::cout << "Token open parenthesis\n";
            break;
        case tok_close_paren:
            std::cout << "Token close parenthesis\n";
            break;
        case tok_open_brack:
            std::cout << "Token open bracket\n";
            break;
        case tok_close_brack:
            std::cout << "Token close bracket\n";
            break;
        case tok_class:
            std::cout << "Token class\n";
            break;
        case tok_graph:
            std::cout << "Token graph\n";
            break;
        case tok_dot:
            std::cout << "Token dot\n";
            break;
        default: 
            std::cout << "Unknown Token\n";
            break;
    }
}




