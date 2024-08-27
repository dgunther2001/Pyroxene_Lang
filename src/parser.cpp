/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/parser/parser.h"

namespace parser {
    int current_token;

    int get_next_token() {
        return current_token = lexer::get_token();
    }

    

    /*
    std::unique_ptr<top_level_expr>  parse_expression() {

    }
    */
   
    /*
    std::unique_ptr<top_level_expr> parse_var_decl() {
        types type;
        std::string identifier;
        switch (current_token) {
            case lexer::tok_int:
                type = int_type;
                break;
            case lexer::tok_float:
                type = float_type;
                break;
            case lexer::tok_char:
                type = char_type;
                break;
            case lexer::tok_string:
                type = string_type;
                break;
            case lexer::tok_bool:
                type = bool_type;
                break;
            default:
                utility::parser_error("Invalid type specified", lexer::line_count); 
        }     

        get_next_token();

        identifier = lexer::identifier;

        get_next_token();

        auto ast_node = std::make_unique<variable_declaration>(type, identifier);
        return std::move(ast_node);

    }
    */
    

    std::unique_ptr<top_level_expr> parse_int_expr() {
        auto ast_node = std::make_unique<integer_expression>(lexer::integer_value);
        get_next_token();
        return std::move(ast_node);
    }

    std::unique_ptr<top_level_expr> parse_float_expr() {
        auto ast_node = std::make_unique<float_expression>(lexer::float_value);
        get_next_token();
        return std::move(ast_node);
    }

    std::unique_ptr<top_level_expr> parse_char_expr() {
        auto ast_node = std::make_unique<char_expression>(lexer::char_value);
        get_next_token();
        return std::move(ast_node);
    }

    std::unique_ptr<top_level_expr> parse_string_expr() {
        auto ast_node = std::make_unique<string_expression>(lexer::string_value);
        get_next_token();
        return std::move(ast_node);
    }

    std::unique_ptr<top_level_expr> parse_bool_expr() {
        auto ast_node = std::make_unique<bool_expression>(lexer::bool_value);
        get_next_token();
        return std::move(ast_node);
    }

}