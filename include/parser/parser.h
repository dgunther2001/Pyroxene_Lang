/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#ifndef PARSER_H
#define PARSER_H

#include <memory>
#include <map>
#include <vector>
#include "../ast/ast.h"
#include "../lexer/lexer.h"
#include "../utility/utility.h"

namespace parser {

    extern int current_token;

    extern lexer::Token_Type current_token_as_token;

    extern std::map<std::string, ast::types> var_map;

    extern std::vector<std::string> defined_vars;

    extern std::map<lexer::Token_Type, int> operator_precedence;

    extern int current_token_index;
    extern int token_index_max;

   // extern std::unique_ptr<ast::top_level_expr> tokenize_expr_vector();

    int get_next_token();


    std::unique_ptr<ast::top_level_expr> parse_expression();
    std::unique_ptr<ast::top_level_expr> parse_primary_expression(lexer::Token_Type prev_tok);
    std::unique_ptr<ast::top_level_expr> parse_binary_expr(std::vector<lexer::Token_Type> token_stream);

    std::unique_ptr<ast::top_level_expr> parse_var_decl_defn();
    std::unique_ptr<ast::top_level_expr> parse_var_decl(ast::types type, std::string identifier);
    std::unique_ptr<ast::top_level_expr> parse_var_defn(ast::types type, std::string identifier);
    std::unique_ptr<ast::top_level_expr> parse_var_assign();

    std::unique_ptr<ast::top_level_expr> parse_identifier_expr();
    std::unique_ptr<ast::top_level_expr> parse_int_expr();
    std::unique_ptr<ast::top_level_expr> parse_float_expr();
    std::unique_ptr<ast::top_level_expr> parse_char_expr();
    std::unique_ptr<ast::top_level_expr> parse_string_expr();
    std::unique_ptr<ast::top_level_expr> parse_bool_expr();

}


#endif