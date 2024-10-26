/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/

#ifndef PARSER_H
#define PARSER_H

#include <memory>
#include <map>
#include <vector>
#include "../ast/ast.h"
#include "../types/types.h"
#include "../lexer/lexer.h"
#include "../utility/utility.h"

namespace parser {

    /**
     * @par Tracks the current token being processed from `lexer::token_stream`.
     */
    extern int current_token;

    /**
     * @par Stores the current token as an enumerated `lexer::Token_Type` as opposed to a raw integer.
     */
    extern lexer::Token_Type current_token_as_token;

    /**
     * @par Stores the current value adjacent to the current token (can be an std::nullopt)
     */
    extern std::optional<lexer::lexer_stored_values> current_value;

    /**
     * @par Stores the current line
     */
    extern int current_line;

    /**
     * @par Stores the precedence of operators, so that the parser knows which order to traverse an expression.
     */
    extern std::map<lexer::Token_Type, int> operator_precedence;

    /**
     * @par Stores the index of the token we are parsing in the lexer::token_stream
     */
    extern int current_token_index;

    /**
     * @par Stores the length of the lexer::token_stream so that we don't attempt to access out of bounds elements.
     */
    extern int token_index_max;
    

    int get_next_token();


    std::unique_ptr<ast::top_level_expr> parse_expression();
    std::unique_ptr<ast::top_level_expr> parse_primary_expression(lexer::Token_Type prev_tok, lexer::lexer_stored_values value);
    std::unique_ptr<ast::top_level_expr> parse_binary_expr(std::unique_ptr<ast::top_level_expr> left, std::unique_ptr<ast::top_level_expr> right, lexer::Token_Type operand);

    std::unique_ptr<ast::top_level_expr> parse_var_decl_defn();
    std::unique_ptr<ast::top_level_expr> parse_var_decl(type_enum::types type, std::string identifier);
    std::unique_ptr<ast::top_level_expr> parse_var_defn(type_enum::types type, std::string identifier);
    std::unique_ptr<ast::top_level_expr> parse_var_assign();

    std::unique_ptr<ast::top_level_expr> parse_func_call(lexer::lexer_stored_values value);
    std::unique_ptr<ast::top_level_expr> parse_identifier_expr(lexer::lexer_stored_values value);
    std::unique_ptr<ast::top_level_expr> parse_int_expr(lexer::lexer_stored_values value);
    std::unique_ptr<ast::top_level_expr> parse_float_expr(lexer::lexer_stored_values value);
    std::unique_ptr<ast::top_level_expr> parse_char_expr(lexer::lexer_stored_values value);
    std::unique_ptr<ast::top_level_expr> parse_string_expr(lexer::lexer_stored_values value);
    std::unique_ptr<ast::top_level_expr> parse_bool_expr(lexer::lexer_stored_values value);

    std::unique_ptr<ast::func_defn> parse_function();
    std::unique_ptr<ast::top_level_expr> parse_return();

    std::unique_ptr<ast::top_level_expr> parse_if();
    std::unique_ptr<ast::top_level_expr> parse_else();

    std::unique_ptr<ast::top_level_expr> parse_print();

    std::unique_ptr<ast::top_level_expr> parse_graph_decl();

    std::vector<std::unique_ptr<ast::top_level_expr>> parse_block();
    type_enum::types parse_type();
}


#endif