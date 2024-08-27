/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#ifndef PARSER_H
#define PARSER_H

#include <memory>
#include "../ast/ast.h"
#include "../lexer/lexer.h"
#include "../utility/utility.h"

namespace parser {

    extern int current_token;

    int get_next_token();

    std::unique_ptr<ast::top_level_expr>  parse_expression();

    std::unique_ptr<ast::top_level_expr> parse_var_decl();

    std::unique_ptr<ast::top_level_expr> parse_int_expr();
    std::unique_ptr<ast::top_level_expr> parse_float_expr();
    std::unique_ptr<ast::top_level_expr> parse_char_expr();
    std::unique_ptr<ast::top_level_expr> parse_string_expr();
    std::unique_ptr<ast::top_level_expr> parse_bool_expr();

}


#endif