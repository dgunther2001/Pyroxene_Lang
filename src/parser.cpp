/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/parser/parser.h"
#include "../unit_tests/parser_tests/parser_tests.cpp"
namespace parser {
    int current_token;

    std::map<std::string, ast::types> var_map;

    std::vector<std::string> defined_vars;

    int get_next_token() {
        return current_token = lexer::get_token();
    }
    
    std::unique_ptr<ast::top_level_expr> parse_expression() {
        // where can i start => simply parsing single operands
        if (lexer::cur_tok_int_val) return std::move(parse_int_expr());
        if (lexer::cur_tok_float_val) return std::move(parse_float_expr());
        if (lexer::cur_tok_char_val) return std::move(parse_char_expr());
        if (lexer::cur_tok_string_val) return std::move(parse_string_expr());
        if (lexer::cur_tok_bool_val) return std::move(parse_bool_expr());

        // parsing something when it is passed as an identifier
        if (current_token == lexer::tok_identifier) return std::move(parse_identifier_expr()); 


    }
    
   
    std::unique_ptr<ast::top_level_expr> parse_var_decl_defn() {
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

        get_next_token(); // consume the type

        identifier = lexer::identifier;

        get_next_token(); // consume the identifier

        if (current_token == lexer::tok_assignment) {
            return std::move(parse_var_defn(type, identifier));
        } else if (current_token == lexer::tok_semicolon) {
            return std::move(parse_var_decl(type, identifier));
        } else {
            utility::parser_error("Expected variable definition or declaration", lexer::line_count);
            return nullptr;
        }
    }
    
    std::unique_ptr<ast::top_level_expr> parse_var_decl(ast::types type, std::string identifier) {
        var_map.insert({identifier, type});

        auto ast_node = std::make_unique<ast::variable_declaration>(type, identifier);

        #if (DEBUG_MODE == 1)
            ast_node->debug_output();
        #endif

        return std::move(ast_node);

    }

    std::unique_ptr<ast::top_level_expr> parse_var_defn(ast::types type, std::string identifier) {

        var_map.insert({identifier, type});


        get_next_token();

        auto assigned_expr = parse_expression();

        
        if (assigned_expr->get_expr_type() != type) {
            utility::parser_error("Defining a variable with incorrect type", lexer::line_count);
        }
        
        

        auto ast_node = std::make_unique<ast::variable_definition>(type, identifier, std::move(assigned_expr));

        #if (DEBUG_MODE == 1)
            ast_node->debug_output();
        #endif

        get_next_token();

        defined_vars.emplace_back(identifier);

        return std::move(ast_node);
    }

    
    std::unique_ptr<ast::top_level_expr> parse_var_assign() {
        std::string identifier = lexer::identifier;

        
        if (var_map.find(identifier) == var_map.end()) {
            utility::parser_error("Variable not yet declared", lexer::line_count);
        }

        get_next_token(); // consumes the identifier


        if (current_token != lexer::tok_assignment) {
            utility::parser_error("Expected an assignment", lexer::line_count);
        }

        get_next_token(); // consume the '='


        auto assigned_expr = parse_expression();

        
        if (assigned_expr->get_expr_type() != var_map[identifier]) {
            utility::parser_error("Invalid assignment", lexer::line_count);
        }

        auto ast_node = std::make_unique<ast::variable_assignment>(assigned_expr->get_expr_type(), identifier, std::move(assigned_expr));

        #if (DEBUG_MODE == 1)
            ast_node->debug_output();
        #endif

        if (std::find(defined_vars.begin(), defined_vars.end(), identifier) == defined_vars.end()) {
            defined_vars.emplace_back(identifier);
        }

        return std::move(ast_node);
    }

    std::unique_ptr<ast::top_level_expr> parse_identifier_expr() {

        std::string identifier = lexer::identifier;

        // deal with case where it is declared, but not defined ******IMPORTANT

        if (var_map.find(identifier) == var_map.end()) {
            utility::parser_error("Variable not yet defined", lexer::line_count);
        }

        if (std::find(defined_vars.begin(), defined_vars.end(), identifier) == defined_vars.end()) {
            utility::parser_error("Variable not yet initialize", lexer::line_count);
        }

        auto ast_node = std::make_unique<ast::identifier_expr>(identifier, var_map[identifier]);

        #if (DEBUG_MODE == 1)
            ast_node->debug_output();
        #endif

        get_next_token();

        return std::move(ast_node);
    }

    std::unique_ptr<ast::top_level_expr> parse_int_expr() {
        auto ast_node = std::make_unique<ast::integer_expression>(lexer::integer_value);
        
        #if (DEBUG_MODE == 1)
            ast_node->debug_output();
        #endif

        get_next_token();
        return std::move(ast_node);
    }

    std::unique_ptr<ast::top_level_expr> parse_float_expr() {
        auto ast_node = std::make_unique<ast::float_expression>(lexer::float_value);

        #if (DEBUG_MODE == 1)
            ast_node->debug_output();
        #endif

        get_next_token();
        return std::move(ast_node);
    }

    std::unique_ptr<ast::top_level_expr> parse_char_expr() {
        auto ast_node = std::make_unique<ast::char_expression>(lexer::char_value);

        #if (DEBUG_MODE == 1)
            ast_node->debug_output();
        #endif

        get_next_token();
        return std::move(ast_node);
    }

    std::unique_ptr<ast::top_level_expr> parse_string_expr() {
        auto ast_node = std::make_unique<ast::string_expression>(lexer::string_value);

        #if (DEBUG_MODE == 1)
            ast_node->debug_output();
        #endif

        get_next_token();
        return std::move(ast_node);
    }

    std::unique_ptr<ast::top_level_expr> parse_bool_expr() {
        auto ast_node = std::make_unique<ast::bool_expression>(lexer::bool_value);

        #if (DEBUG_MODE == 1) 
            ast_node->debug_output();
        #endif

        get_next_token();
        return std::move(ast_node);
    }

}