/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/

#include "../../include/lexer/lexer.h"
#include <iostream>
#include <variant>

static void print_individual_token(int token, const std::optional<lexer::lexer_stored_values>& value) {

    switch (token) {
        case lexer::tok_eof:
            std::cout << "Token EOF" << "\n";
            break;
        case lexer::tok_semicolon:
            std::cout << "Token Semicolon" << "\n";
            break;
        case lexer::tok_int:
            std::cout << "Token int\n";
            break;
        case lexer::tok_float:
            std::cout << "Token float\n";
            break;
        case lexer::tok_bool:
            std::cout << "Token bool\n";
            break;
        case lexer::tok_char:
            std::cout << "Token char\n";
            break;
        case lexer::tok_string:
            std::cout << "Token string\n";
            break;
        case lexer::tok_identifier:
            std::cout << "Token Identifier: ";
            break;
        case lexer::tok_for:
            std::cout << "Token for\n";
            break;
        case lexer::tok_while:
            std::cout << "Token while\n";
            break;
        case lexer::tok_true:
            std::cout << "Token true\n";
            break;
        case lexer::tok_false:
            std::cout << "Token false\n";
            break;
        case lexer::tok_assignment:
            std::cout << "Token assignment\n";
            break;
        case lexer::tok_float_val:
            std::cout << "Token float value: ";
            break;
        case lexer::tok_int_val:
            std::cout << "Token int value: ";
            break;
        case lexer::tok_string_val:
            std::cout << "Token string value: ";
            break;
        case lexer::tok_char_val:
            std::cout << "Token character value: ";
            break;
        case lexer::tok_open_paren:
            std::cout << "Token open parenthesis\n";
            break;
        case lexer::tok_close_paren:
            std::cout << "Token close parenthesis\n";
            break;
        case lexer::tok_open_brack:
            std::cout << "Token open bracket\n";
            break;
        case lexer::tok_close_brack:
            std::cout << "Token close bracket\n";
            break;
        case lexer::tok_open_arr:
            std::cout << "Token open brace\n";
            break;
        case lexer::tok_close_arr:
            std::cout << "Token close brace\n";
            break;
        case lexer::tok_comma:
            std::cout << "Token comma\n";
            break;
        case lexer::tok_class:
            std::cout << "Token class\n";
            break;
        case lexer::tok_graph:
            std::cout << "Token graph\n";
            break;
        case lexer::tok_dot:
            std::cout << "Token dot\n";
            break;
        case lexer::tok_plus:
            std::cout << "Token plus\n";
            break;
        case lexer::tok_minus:
            std::cout << "Token minus\n";
            break;
        case lexer::tok_mult:
            std::cout << "Token mult\n";
            break;
        case lexer::tok_div:
            std::cout << "Token div\n";
            break;
        case lexer::tok_return:
            std::cout << "Token return\n";
            break;
        case lexer::tok_def:
            std::cout << "Token def\n";
            break;
        default: 
            std::cout << "Unknown Token\n";
            break;
    }

    if (value.has_value()) {
        if (!std::holds_alternative<bool>(value.value())) {
            std::visit([](const auto& arg) { std::cout << arg << "\n"; }, value.value());
        } 
    }
}




