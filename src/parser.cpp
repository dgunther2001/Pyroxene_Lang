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

    std::unique_ptr<ast::top_level_expr> parse_expression() { // TEMPORARY PLACEHOLDER (ESSENTIALLY RETURN NOTHING)
        auto ast_node = std::make_unique<ast::top_level_expr>();
        return std::move(ast_node);
    }

    /*
    std::unique_ptr<top_level_expr>  parse_expression() {

    }
    */
   
    
    std::unique_ptr<ast::top_level_expr> parse_var_decl() {
        ast::types type;
        std::string identifier;
        switch (current_token) {
            case lexer::tok_int:
                type = ast::int_type;
                break;
            case lexer::tok_float:
                type = ast::float_type;
                break;
            case lexer::tok_char:
                type = ast::char_type;
                break;
            case lexer::tok_string:
                type = ast::string_type;
                break;
            case lexer::tok_bool:
                type = ast::bool_type;
                break;
            default:
                utility::parser_error("Invalid type specified", lexer::line_count); 
        }     

        get_next_token();

        identifier = lexer::identifier;

        get_next_token();

        auto ast_node = std::make_unique<ast::variable_declaration>(type, identifier);
        return std::move(ast_node);

    }

    std::unique_ptr<ast::top_level_expr> parse_var_defn() {
        ast::types type;
        std::string identifier;
        switch (current_token) {
            case lexer::tok_int:
                type = ast::int_type;
                break;
            case lexer::tok_float:
                type = ast::float_type;
                break;
            case lexer::tok_char:
                type = ast::char_type;
                break;
            case lexer::tok_string:
                type = ast::string_type;
                break;
            case lexer::tok_bool:
                type = ast::bool_type;
                break;
            default:
                utility::parser_error("Invalid type specified", lexer::line_count); 
        }     

        get_next_token();

        identifier = lexer::identifier;

        get_next_token();

        if (current_token != lexer::tok_assignment) {
            utility::parser_error("Expected variable assignment", lexer::line_count);
        }

        get_next_token();

        auto assigned_expr = parse_expression();

        auto ast_node = std::make_unique<ast::variable_definition>(type, identifier, std::move(assigned_expr));
        get_next_token();
        return std::move(ast_node);
    }
    
    

    std::unique_ptr<ast::top_level_expr> parse_int_expr() {
        auto ast_node = std::make_unique<ast::integer_expression>(lexer::integer_value);
        get_next_token();
        return std::move(ast_node);
    }

    std::unique_ptr<ast::top_level_expr> parse_float_expr() {
        auto ast_node = std::make_unique<ast::float_expression>(lexer::float_value);
        get_next_token();
        return std::move(ast_node);
    }

    std::unique_ptr<ast::top_level_expr> parse_char_expr() {
        auto ast_node = std::make_unique<ast::char_expression>(lexer::char_value);
        get_next_token();
        return std::move(ast_node);
    }

    std::unique_ptr<ast::top_level_expr> parse_string_expr() {
        auto ast_node = std::make_unique<ast::string_expression>(lexer::string_value);
        get_next_token();
        return std::move(ast_node);
    }

    std::unique_ptr<ast::top_level_expr> parse_bool_expr() {
        auto ast_node = std::make_unique<ast::bool_expression>(lexer::bool_value);
        get_next_token();
        return std::move(ast_node);
    }

}