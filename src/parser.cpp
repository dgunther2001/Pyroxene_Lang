/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/parser/parser.h"
#include "../unit_tests/parser_tests/parser_tests.cpp"
namespace parser {
    int current_token;

    lexer::Token_Type current_token_as_token;

    std::map<std::string, ast::types> var_map;

    std::vector<std::string> defined_vars;

    std::map<lexer::Token_Type, int> operator_precedence;

    int current_token_index = 0;
    int token_index_max = lexer::token_stream.size();

    /**
     * @par Grabs the next token from input, increments the index, and casts it to an int.
     * 
     * @code
        current_token = lexer::token_stream[current_token_index];
        current_token_index++;
        current_token_as_token = static_cast<lexer::Token_Type>(current_token);

        return current_token;
     * @endcode
     */
    int get_next_token() {
        current_token = lexer::token_stream[current_token_index];
        current_token_index++;
        current_token_as_token = static_cast<lexer::Token_Type>(current_token);

        return current_token;
    }

    /*
    std::unique_ptr<ast::top_level_expr> tokenize_expr_vector() {
        std::vector<lexer::Token_Type> single_nested_expr_tokens;
        while (current_token != lexer::tok_semicolon) { // while it is an expression...
            single_nested_expr_tokens.emplace_back(current_token);
            get_next_token();
        }

        return std::move(parse_binary_expr(single_nested_expr_tokens));
        // need to somehow store identifiers and raw values as well...
    }
    */

   /**
    * @par When called, figures out whether we are dealing with a unary, or binary expression, and calls the respective function.
    * 
    * @par Initialize the vector of tokens and values.
    * Stores the first token and value in a vector, and then consumes it. This happens regardless of whether the expression is unary, or binary.
    * 
    * @code
        lexer::Token_Type first_tok = current_token_as_token; 
        std::vector<lexer::Token_Type> single_nested_expr_tokens;
        std::vector<std::optional<lexer::lexer_stored_values>> single_nested_expr_values;
        single_nested_expr_tokens.emplace_back(current_token_as_token);
        single_nested_expr_values.emplace_back(lexer::stored_values.at(current_token_index - 1));
        get_next_token(); 
    * @endcode

      @par Check if we have a binary operator
      If we have a binary op, store all of those tokens and values in the vectors and consume them until we reach a semicolon. Then return a call to the binary expression parser;

      @code
        if (operator_precedence.find(current_token_as_token) != operator_precedence.end()) {
            while (current_token_as_token != lexer::tok_semicolon) { // while it is an expression...
                single_nested_expr_tokens.emplace_back(current_token_as_token);
                single_nested_expr_values.emplace_back(lexer::stored_values.at(current_token_index - 1));
    

                get_next_token();
            }
            return std::move(parse_binary_expr(single_nested_expr_tokens, single_nested_expr_values));
        }
      @endcode

      @par If there is no operator, it is a primary expression, so call the function that parses primary expressions with that initial token.

      @code
        else {
            if (lexer::stored_values.at(current_token_index - 2).has_value()) {
                lexer::lexer_stored_values value = lexer::stored_values.at(current_token_index - 2).value();
                return std::move(parse_primary_expression(first_tok, true, value));
            } else {
                utility::parser_error("No value stored for the current token", lexer::line_count);
            }
        }
      @endcode
    */
    std::unique_ptr<ast::top_level_expr> parse_expression() {
        
        lexer::Token_Type first_tok = current_token_as_token; 
        std::vector<lexer::Token_Type> single_nested_expr_tokens;
        std::vector<std::optional<lexer::lexer_stored_values>> single_nested_expr_values;
        single_nested_expr_tokens.emplace_back(current_token_as_token);
        single_nested_expr_values.emplace_back(lexer::stored_values.at(current_token_index - 1));
        get_next_token(); 

        if (operator_precedence.find(current_token_as_token) != operator_precedence.end()) {
            while (current_token_as_token != lexer::tok_semicolon) { // while it is an expression...
                single_nested_expr_tokens.emplace_back(current_token_as_token);
                single_nested_expr_values.emplace_back(lexer::stored_values.at(current_token_index - 1));
    

                get_next_token();
            }
            return std::move(parse_binary_expr(single_nested_expr_tokens, single_nested_expr_values));
        }

        else {
            if (lexer::stored_values.at(current_token_index - 2).has_value()) {
                lexer::lexer_stored_values value = lexer::stored_values.at(current_token_index - 2).value();
                return std::move(parse_primary_expression(first_tok, true, value));
            } else {
                utility::parser_error("No value stored for the current token", lexer::line_count);
            }
        }
        

        // add parsing of function calls
    }
    
    /**
     * @par When called, parses tokens into leaf nodes of our AST.
     * 
     * @param prev_tok The token being parsed as a primary expression,
     * @param top_level This indicates whether or not the expression is or isn't nested within a binary expression. (true = not in binary_expr)
     * @param value A paramter that passes the value associated with the primary expression, whether it be a float, boolean, string, etc...
     * @code
        if (prev_tok == lexer::tok_int_val) return std::move(parse_int_expr(top_level, value));
        if (prev_tok == lexer::tok_float_val) return std::move(parse_float_expr(top_level, value));
        if (prev_tok == lexer::tok_char_val) return std::move(parse_char_expr(top_level, value));
        if (prev_tok == lexer::tok_string_val) return std::move(parse_string_expr(top_level, value));
        if (prev_tok == lexer::tok_true) return std::move(parse_bool_expr(top_level, value));
        if (prev_tok == lexer::tok_false) return std::move(parse_bool_expr(top_level, value));
        if (prev_tok == lexer::tok_identifier) return std::move(parse_identifier_expr(top_level, value)); 
     * @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_primary_expression(lexer::Token_Type prev_tok, bool top_level, lexer::lexer_stored_values value) {
        if (prev_tok == lexer::tok_int_val) return std::move(parse_int_expr(top_level, value));
        if (prev_tok == lexer::tok_float_val) return std::move(parse_float_expr(top_level, value));
        if (prev_tok == lexer::tok_char_val) return std::move(parse_char_expr(top_level, value));
        if (prev_tok == lexer::tok_string_val) return std::move(parse_string_expr(top_level, value));
        if (prev_tok == lexer::tok_true) return std::move(parse_bool_expr(top_level, value));
        if (prev_tok == lexer::tok_false) return std::move(parse_bool_expr(top_level, value));
        if (prev_tok == lexer::tok_identifier) return std::move(parse_identifier_expr(top_level, value)); 

        utility::parser_error("Primary expression not recognized", lexer::line_count);
        return nullptr;
    }

    /**
     * @par Fully handles the recursive parsing of binary expressions.
     * 
     * @param sub_tok_stream Holds a subset of the token stream (functionally a single nested expression).
     * @param sub_value_stream Holds a subset of values, such as identifiers, integers, etc, that are concurrent with the sub token stream.
     * 
     * @par Check if the token stream only holds a single value, and if so, call parse_primary_expression.
     * 
     * @code 
     *   if (sub_tok_stream.size() == 1) {
            if (sub_value_stream.at(0) == std::nullopt) {
                utility::parser_error("Expected value for token", lexer::line_count);
            }
            return std::move(parse_primary_expression(sub_tok_stream.at(0), false, sub_value_stream.at(0).value()));
        }
     * @endcode
     * 
     * @par If the expression has multiple tokens, find the highest precedence operator, and recursively call parse_binary_expr(...) on the left and right sub-expressions.
     * 
     * @code
     *  int index_of_highest_prec_op = -1;
        int highest_prec = -1;

        for (int current_index = 0; current_index < sub_tok_stream.size(); current_index++) {
            lexer::Token_Type token = sub_tok_stream[current_index];
            if (operator_precedence.find(token) != operator_precedence.end()) {
                if (operator_precedence[token] > highest_prec) {
                    highest_prec = operator_precedence[token];
                    index_of_highest_prec_op = current_index;
                }
            }
        }

        if (index_of_highest_prec_op == 0 || index_of_highest_prec_op == sub_tok_stream.size() - 1) {
            utility::parser_error("Operator not infix", lexer::line_count);
        }


        std::vector<lexer::Token_Type> left_tokens(sub_tok_stream.begin(), sub_tok_stream.begin() + index_of_highest_prec_op);
        std::vector<std::optional<lexer::lexer_stored_values>> left_values(sub_value_stream.begin(), sub_value_stream.begin() + index_of_highest_prec_op);

        std::vector<lexer::Token_Type> right_tokens(sub_tok_stream.begin() + index_of_highest_prec_op + 1, sub_tok_stream.end());
        std::vector<std::optional<lexer::lexer_stored_values>> right_values(sub_value_stream.begin() + index_of_highest_prec_op + 1, sub_value_stream.end());

        auto left_expr = parse_binary_expr(left_tokens, left_values);
        auto right_expr = parse_binary_expr(right_tokens, right_values);

        lexer::Token_Type operator_token = sub_tok_stream.at(index_of_highest_prec_op);
     * @endcode 
     *  
     * @par Validate that the types of each side match, and then store them in a binary expression ast node with type and operator information.
     * 
     * @code
        ast::types bin_type;
        if (left_expr->get_expr_type() == right_expr->get_expr_type()) {
            bin_type = left_expr->get_expr_type(); 
        } else {
            utility::parser_error("Mismatched types in binary expression", lexer::line_count);
        }
        auto ast_node = std::make_unique<ast::binary_expr>(operator_token, std::move(left_expr), std::move(right_expr), bin_type);
        return std::move(ast_node);
     * @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_binary_expr(std::vector<lexer::Token_Type> sub_tok_stream, std::vector<std::optional<lexer::lexer_stored_values>> sub_value_stream) {

        if (sub_tok_stream.empty()) {
            utility::parser_error("Empty token stream provided to parse_binary_expr", lexer::line_count);
        }

        if (sub_tok_stream.size() == 1) {
            if (sub_value_stream.at(0) == std::nullopt) {
                utility::parser_error("Expected value for token", lexer::line_count);
            }
            return std::move(parse_primary_expression(sub_tok_stream.at(0), false, sub_value_stream.at(0).value()));
        }

        int index_of_highest_prec_op = -1;
        int highest_prec = -1;

        for (int current_index = 0; current_index < sub_tok_stream.size(); current_index++) {
            lexer::Token_Type token = sub_tok_stream[current_index];
            if (operator_precedence.find(token) != operator_precedence.end()) {
                if (operator_precedence[token] > highest_prec) {
                    highest_prec = operator_precedence[token];
                    index_of_highest_prec_op = current_index;
                }
            }
        }

        if (index_of_highest_prec_op == 0 || index_of_highest_prec_op == sub_tok_stream.size() - 1) {
            utility::parser_error("Operator not infix", lexer::line_count);
        }


        std::vector<lexer::Token_Type> left_tokens(sub_tok_stream.begin(), sub_tok_stream.begin() + index_of_highest_prec_op);
        std::vector<std::optional<lexer::lexer_stored_values>> left_values(sub_value_stream.begin(), sub_value_stream.begin() + index_of_highest_prec_op);

        std::vector<lexer::Token_Type> right_tokens(sub_tok_stream.begin() + index_of_highest_prec_op + 1, sub_tok_stream.end());
        std::vector<std::optional<lexer::lexer_stored_values>> right_values(sub_value_stream.begin() + index_of_highest_prec_op + 1, sub_value_stream.end());

        auto left_expr = parse_binary_expr(left_tokens, left_values);
        auto right_expr = parse_binary_expr(right_tokens, right_values);
        
        lexer::Token_Type operator_token = sub_tok_stream.at(index_of_highest_prec_op);

        ast::types bin_type;
        if (left_expr->get_expr_type() == right_expr->get_expr_type()) {
            bin_type = left_expr->get_expr_type(); 
        } else {
            utility::parser_error("Mismatched types in binary expression", lexer::line_count);
        }
            

        auto ast_node = std::make_unique<ast::binary_expr>(operator_token, std::move(left_expr), std::move(right_expr), bin_type);

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        return std::move(ast_node);
        
    }
   
   /**
    * @par If we identify a type keyword in the token stream, we jump into this function to check if it is a valid variable declaration, or definition.
    * 
    * @par First we check the type
    * @code
    *   ast::types type;
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
    * @endcode

      @par We then store the identifier, and put it in the type map.
      
      @code
        std::optional<lexer::lexer_stored_values> value = lexer::stored_values[current_token_index - 1];

        if (value.has_value()) {
            if (std::holds_alternative<std::string>(value.value())) {
                identifier = std::get<std::string>(value.value());
            } 
            else {
                utility::parser_error("Expected identifier", lexer::line_count);
            }
        }

        get_next_token();

        var_map.insert({identifier, type});
      @endcode

      @par We then check whether the next token is an '=', or a ';' and call the respective declaration, or definition token.

      @code
        if (current_token == lexer::tok_assignment) {
            return std::move(parse_var_defn(type, identifier));
        } else if (current_token == lexer::tok_semicolon) {
            return std::move(parse_var_decl(type, identifier));
        } else {
            utility::parser_error("Expected variable definition or declaration", lexer::line_count);
        }
      @endcode
    */
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


        std::optional<lexer::lexer_stored_values> value = lexer::stored_values[current_token_index - 1];

        if (value.has_value()) {
            if (std::holds_alternative<std::string>(value.value())) {
                identifier = std::get<std::string>(value.value());
            } 
            else {
                utility::parser_error("Expected identifier", lexer::line_count);
            }
        }

        get_next_token(); // consume the identifier

        var_map.insert({identifier, type});

        if (current_token == lexer::tok_assignment) {
            return std::move(parse_var_defn(type, identifier));
        } else if (current_token == lexer::tok_semicolon || current_token == lexer::tok_comma || current_token == lexer::tok_close_paren) {
            return std::move(parse_var_decl(type, identifier));
        } 
        utility::parser_error("Expected variable definition or declaration", lexer::line_count);
        return nullptr;

    }
    
    /**
     * @par This function simply needs to create an AST node for a variable declaration based on the values passed to it
     * 
     * @code
        auto ast_node = std::make_unique<ast::variable_declaration>(type, identifier);

        #if (DEBUG_MODE == 1)
            ast_node->debug_output();
        #endif

        return std::move(ast_node);
     * @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_var_decl(ast::types type, std::string identifier) {

        auto ast_node = std::make_unique<ast::variable_declaration>(type, identifier);

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        return std::move(ast_node);

    }

    /**
     * @par Parses a variable definition, and returns an AST node, as well as inserts it into the defined_vars map.
     * 
     * @code
        get_next_token(); // consume the '='
        auto assigned_expr = parse_expression();

        if (assigned_expr->get_expr_type() != type) {
            utility::parser_error("Defining a variable with incorrect type", lexer::line_count);
        }
        
        auto ast_node = std::make_unique<ast::variable_definition>(type, identifier, std::move(assigned_expr));
        defined_vars.emplace_back(identifier);
        return std::move(ast_node);
     * @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_var_defn(ast::types type, std::string identifier) {

        get_next_token(); // consume the '='

        auto assigned_expr = parse_expression();

        
        if (assigned_expr->get_expr_type() != type) {
            utility::parser_error("Defining a variable with incorrect type", lexer::line_count);
        }
        
        

        auto ast_node = std::make_unique<ast::variable_definition>(type, identifier, std::move(assigned_expr));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        defined_vars.emplace_back(identifier);

        return std::move(ast_node);
    }

    /**
     * @par Parses assignment for predefined variables
     * 
     * @par Validate that the identifier has been declared.
     * 
     * @code
     *  std::string identifier;
        std::optional<lexer::lexer_stored_values> value = lexer::stored_values[current_token_index - 1];
        
        if (value.has_value()) {
            if (std::holds_alternative<std::string>(value.value())) {
                identifier = std::get<std::string>(value.value());
            } 
            else {
                utility::parser_error("Expected identifier", lexer::line_count);
            }
        }

        
        if (var_map.find(identifier) == var_map.end()) {
            utility::parser_error("Variable not yet declared", lexer::line_count);
        }

        get_next_token(); 
     * @endcode

       @par Parse the new expression assigned, and validate its type.

       @code
        auto assigned_expr = parse_expression();

        if (assigned_expr->get_expr_type() != var_map[identifier]) {
            utility::parser_error("Invalid assignment", lexer::line_count);
        }

        auto ast_node = std::make_unique<ast::variable_assignment>(assigned_expr->get_expr_type(), identifier, std::move(assigned_expr));

        if (std::find(defined_vars.begin(), defined_vars.end(), identifier) == defined_vars.end()) {
            defined_vars.emplace_back(identifier);
        }

        return std::move(ast_node);
       @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_var_assign() {
        std::string identifier;
        std::optional<lexer::lexer_stored_values> value = lexer::stored_values[current_token_index - 1];
        
        if (value.has_value()) {
            if (std::holds_alternative<std::string>(value.value())) {
                identifier = std::get<std::string>(value.value());
            } 
            else {
                utility::parser_error("Expected identifier", lexer::line_count);
            }
        }

        
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

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        if (std::find(defined_vars.begin(), defined_vars.end(), identifier) == defined_vars.end()) {
            defined_vars.emplace_back(identifier);
        }

        return std::move(ast_node);
    }

    /**
     * @par This parses primary identifiers, and validates that they have been pre-defined
     * 
     * @param top_level Indicates whether this expresion is part of a binary subexpression.
     * @param value Stores the actual associated identifier name.
     * 
     * @code
        std::string identifier;

        std::optional<lexer::lexer_stored_values> value = lexer::stored_values[current_token_index - 2];

        if (value.has_value()) {
            if (std::holds_alternative<std::string>(value.value())) {
                identifier = std::get<std::string>(value.value());
            } 
            else {
                utility::parser_error("Expected identifier", lexer::line_count);
            }
        } 

        if (var_map.find(identifier) == var_map.end()) {
            utility::parser_error("Variable not yet defined", lexer::line_count);
        }

        if (std::find(defined_vars.begin(), defined_vars.end(), identifier) == defined_vars.end()) {
            utility::parser_error("Variable not yet initialized", lexer::line_count);
        }

        auto ast_node = std::make_unique<ast::identifier_expr>(identifier, var_map[identifier]);
        return std::move(ast_node);
     * @endcode.
     */
    std::unique_ptr<ast::top_level_expr> parse_identifier_expr(bool top_level, lexer::lexer_stored_values value) {

        std::string identifier = std::get<std::string>(value);


        // deal with case where it is declared, but not defined ******IMPORTANT

        if (var_map.find(identifier) == var_map.end()) {
            utility::parser_error("Variable not yet defined", lexer::line_count);
        }

        if (std::find(defined_vars.begin(), defined_vars.end(), identifier) == defined_vars.end()) {
            utility::parser_error("Variable not yet initialized", lexer::line_count);
        }

        auto ast_node = std::make_unique<ast::identifier_expr>(identifier, var_map[identifier]);

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        if (top_level) {
            get_next_token();
        }

        return std::move(ast_node);
    }

    /**
     * @par This parses integer literals.
     * @param top_level Indicates whether this expresion is part of a binary subexpression.
     * @param value Stores the actual associated integer value.
     * 
     * @code
     * auto ast_node = std::make_unique<ast::integer_expression>(lexer::integer_value);
     *  if (top_level) {
            get_next_token();
        }
        return std::move(ast_node);
        @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_int_expr(bool top_level, lexer::lexer_stored_values value) {
        auto ast_node = std::make_unique<ast::integer_expression>(std::get<int64_t>(value));
        
        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        if (top_level) {
            get_next_token();
        }
        return std::move(ast_node);
    }

    /**
     * @par This parses float literals.
     * @param top_level Indicates whether this expresion is part of a binary subexpression.
     * @param value Stores the actual associated float value.
     * 
     * @code
        auto ast_node = std::make_unique<ast::float_expression>(lexer::float_value);

        if (top_level) {
            get_next_token();
        }
        return std::move(ast_node);
        @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_float_expr(bool top_level, lexer::lexer_stored_values value) {
        auto ast_node = std::make_unique<ast::float_expression>(std::get<float>(value));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        if (top_level) {
            get_next_token();
        }
        return std::move(ast_node);
    }

    /**
     * @par This parses char literals.
     * @param top_level Indicates whether this expresion is part of a binary subexpression.
     * @param value Stores the actual associated character value.
     * 
     * @code
        std::unique_ptr<ast::top_level_expr> parse_char_expr(bool top_level) {
            auto ast_node = std::make_unique<ast::char_expression>(lexer::char_value);

            if (top_level) {
                get_next_token();
            }
        return std::move(ast_node);
        @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_char_expr(bool top_level, lexer::lexer_stored_values value) {
        auto ast_node = std::make_unique<ast::char_expression>(std::get<char>(value));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        if (top_level) {
            get_next_token();
        }
        return std::move(ast_node);
    }


    /**
     * @par This parses string literals.
     * @param top_level Indicates whether this expresion is part of a binary subexpression.
     * @param value Stores the actual associated string value.
     * 
     * @code
        auto ast_node = std::make_unique<ast::string_expression>(lexer::string_value);

        if (top_level) {
            get_next_token();
        }
        return std::move(ast_node);
        @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_string_expr(bool top_level, lexer::lexer_stored_values value) {
        auto ast_node = std::make_unique<ast::string_expression>(std::get<std::string>(value));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        if (top_level) {
            get_next_token();
        }
        return std::move(ast_node);
    }

    /**
     * @par This parses boolean literals.
     * @param top_level Indicates whether this expresion is part of a binary subexpression.
     * @param value Stores the actual associated boolean value.
     * 
     * @code
        auto ast_node = std::make_unique<ast::bool_expression>(lexer::bool_value);

        if (top_level) {
            get_next_token();
        }
        return std::move(ast_node);
        @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_bool_expr(bool top_level, lexer::lexer_stored_values value) {
        auto ast_node = std::make_unique<ast::bool_expression>(std::get<bool>(value));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1) 
            ast_node->debug_output();
        #endif

        if (top_level) {
            get_next_token();
        }
        return std::move(ast_node);
    }

    std::unique_ptr<ast::func_defn> parse_function() {
        // need to eat "def"
        // need to get type, store it, and then eat it
        // grab the name, store it, and then eat it
        // consume a "(""
        // while next token is a comma, parse a variable declaration
        // do this and store it in the parameters vector
        // when we hit a ")", stop
        // consume a "{"

        // while not "}"... check whether it is a var decl or defn, return, or just a regulation expression (case statement based on the current token...)
        // validate that any return statement is of the expected type
        
        // hold a boolean flag that indicates whether a return statement exists for functions...

        get_next_token(); // eat def

        if (!lexer::stored_values.at(current_token_index).has_value()) {
            std::cout << "FUNC NULLOPT!!!\n\n";
            return nullptr;
        }

        ast::types ret_type;
        switch (current_token) {
            case lexer::tok_int:
                ret_type = ast::int_type;
                break;
            case lexer::tok_float:
                ret_type = ast::float_type;
                break;
            case lexer::tok_char:
                ret_type = ast::char_type;
                break;
            case lexer::tok_string:
                ret_type = ast::string_type;
                break;
            case lexer::tok_bool:
                ret_type = ast::bool_type;
                break;
            case lexer::tok_void:
                ret_type = ast::void_type;
                break;
            default:
                utility::parser_error("Invalid return type provided to function", lexer::line_count);
        }

        get_next_token(); // consume the type

        std::string func_name = std::get<std::string>(lexer::stored_values.at(current_token_index - 1).value()); // grab the function name

        get_next_token(); // consume the name

        if (current_token != lexer::tok_open_paren) {
            utility::parser_error("Expected '('", lexer::line_count);
        }

        get_next_token();

        std::vector<std::unique_ptr<ast::top_level_expr>> parameters;

        while (true) {
            if (current_token == lexer::tok_close_paren) {
                get_next_token(); 
                break;
            }

            auto current_decl = parse_var_decl_defn();
            parameters.emplace_back(std::move(current_decl));

            
            if (current_token == lexer::tok_comma) {
                get_next_token();
            } else if (current_token == lexer::tok_close_paren) {
                get_next_token();
                break;
            } else {
                utility::parser_error("Expected ',' or ')'", lexer::line_count);
            }
            
        }

        if (current_token != lexer::tok_open_brack) {
            utility::parser_error("Expected opening bracket", lexer::line_count);
        }

        get_next_token(); // consume the bracket

        std::vector<std::unique_ptr<ast::top_level_expr>> expressions;
        std::set<std::string> var_names;
        while (current_token != lexer::tok_close_brack) {
            // parse expressions and add them to a vector
            // consume semicolons as we go
            std::unique_ptr<ast::top_level_expr> current_expr;
            switch (current_token) {
                case lexer::tok_int: case lexer::tok_float: case lexer::tok_char: case lexer::tok_string: case lexer::tok_bool: {
                    current_expr = parse_var_decl_defn();
                    std::string var_name;
                    if (auto* named_var = dynamic_cast<ast::variable_definition*>(current_expr.get())) {
                        var_name = named_var->get_name();
                        if (named_var->is_binary()){
                            get_next_token();
                        }
                    } else if (auto* named_var = dynamic_cast<ast::variable_declaration*>(current_expr.get())) {
                        var_name = named_var->get_name();
                        get_next_token();
                    }
                    var_names.insert(var_name);
                    break;
                }
                case lexer::tok_return:
                    current_expr = parse_return();
                    break;
                default:
                    current_expr = parse_expression();
            }

            expressions.emplace_back(std::move(current_expr));

            // add error handling here

            //get_next_token(); // consume the ';' (MAY NEED TO BE REMOVED!!!)
        }

        get_next_token(); // consume the '}'

        // instantiate the ast node and return it

        auto func_definition = std::make_unique<ast::func_defn>(ret_type, func_name, std::move(expressions), std::move(var_names), std::move(parameters));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            func_definition->debug_output();
        #endif

        return func_definition;

    }

    std::unique_ptr<ast::top_level_expr> parse_return() {
        get_next_token();
        auto ast_node = parse_expression();

        if (auto* binary_expr_node = dynamic_cast<ast::binary_expr*>(ast_node.get())) {
            get_next_token();
        }

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            auto* return_expr_ptr = dynamic_cast<ast::return_expr*>(ast_node.get());
            return_expr_ptr->debug_output();
        #endif

        return std::move(ast_node);
    }

}