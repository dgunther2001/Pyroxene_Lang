/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/parser/parser.h"
#include "../debug_test_suite/parser_tests/parser_tests.cpp"
namespace parser {
    int current_token;

    lexer::Token_Type current_token_as_token;

    std::map<lexer::Token_Type, int> operator_precedence;

    int current_token_index = 0;
    int current_line;
    int token_index_max = lexer::token_stream.size();

    std::optional<lexer::lexer_stored_values> current_value;

    /**
     * @par Grabs the next token from input, increments the index, and casts it to an int.
     * 
     * @code
        if (current_token_index >= lexer::token_stream.size()) {
            throw std::out_of_range("Token Stream Access OUT OF RANGE");
        }
        current_token = lexer::token_stream.at(current_token_index);

        if (current_token_index >= lexer::stored_values.size()) {
            throw std::out_of_range("Value Stream Access OUT OF RANGE");
        }   
        current_value = lexer::stored_values.at(current_token_index);     
        
        if (current_token_index >= lexer::line_count_vec.size()) {
            throw std::out_of_range("Line Count Vector Access OUT OF RANGE");
        } 
        current_line = lexer::line_count_vec.at(current_token_index);

        current_token_index++;
        current_token_as_token = static_cast<lexer::Token_Type>(current_token);

        return current_token;
     * @endcode
     */
    int get_next_token() {
        if (current_token_index >= lexer::token_stream.size()) {
            throw std::out_of_range("Token Stream Access OUT OF RANGE");
        }
        current_token = lexer::token_stream.at(current_token_index);

        if (current_token_index >= lexer::stored_values.size()) {
            throw std::out_of_range("Value Stream Access OUT OF RANGE");
        }
        current_value = lexer::stored_values.at(current_token_index);

        if (current_token_index >= lexer::line_count_vec.size()) {
            throw std::out_of_range("Line Count Vector Access OUT OF RANGE");
        } 
        current_line = lexer::line_count_vec.at(current_token_index);

        current_token_index++;
        current_token_as_token = static_cast<lexer::Token_Type>(current_token);

        return current_token;
    }


   /**
    * @par When called, figures out whether we are dealing with a unary, or binary expression, and calls the respective function.
    * 
    * @par Initialize all intermediary storage units.
    * @code
    *   std::vector<lexer::Token_Type> single_nested_expr_tokens; 
        std::vector<std::optional<lexer::lexer_stored_values>> single_nested_expr_values; 
        std::vector<std::unique_ptr<ast::top_level_expr>> parsed_expressions; 
        std::vector<lexer::Token_Type> operators; 

        int paren_count = 0;
        std::unique_ptr<ast::top_level_expr> current_expr = nullptr;
    * @endcode

    @par Iterate over the token stream until we encounter a semicolon, or a closing parenthesis, and the number of nested parenthesis is 0.
    Functionally, we then parse each individual primary expression in the binary expression, and store operators in an adjacent vector. We build the tree up from there.
    @code 
        while ((current_token_as_token != lexer::tok_semicolon) && (current_token_as_token != lexer::tok_close_paren || paren_count > 0)) { // while it is an expression.. 

            current_expr = parse_primary_expression(current_token_as_token, current_value.value());

            if (current_expr == nullptr) {
                utility::parser_error("Parsed expression is null", current_line);
            }

            parsed_expressions.push_back(std::move(current_expr));

            if ((current_token_as_token == lexer::tok_semicolon) || (current_token_as_token == lexer::tok_close_paren && paren_count <= 0) || (current_token_as_token == lexer::tok_comma)) break;

            if (!lexer::is_operator(current_token_as_token)) {
                utility::parser_error("Expected infix operator in expression", current_line);
            }

            operators.push_back(current_token_as_token);

            get_next_token(); 
        }
    @endcode

    @par Keep building up binary expression until the number of operators in the operator vector is 0. Then return the singular expression stored in the vecotr (allowed to be primary or unary).
    @code
        int index_of_highest_prec_op = -1;
        int highest_prec = -1;
        lexer::Token_Type current_op;
        while (operators.size() != 0) {

            for (int i = 0; i < operators.size(); i++) {
                current_op = operators.at(i);
                if (operator_precedence.find(current_op) != operator_precedence.end()) {
                    if (operator_precedence[current_op] > highest_prec) {
                        highest_prec = operator_precedence[current_op];
                        index_of_highest_prec_op = i;
                    }
                }
            }

            if (index_of_highest_prec_op == -1) {
                utility::parser_error("Operator not found in operator map", current_line);
            }

            current_op = current_op = operators.at(index_of_highest_prec_op);
            operators.erase(operators.begin() + index_of_highest_prec_op);

            auto left_expr = std::move(parsed_expressions.at(index_of_highest_prec_op));
            auto right_expr = std::move(parsed_expressions.at(index_of_highest_prec_op + 1));

            parsed_expressions.at(index_of_highest_prec_op) = parse_binary_expr(std::move(left_expr), std::move(right_expr), current_op);
            parsed_expressions.erase(parsed_expressions.begin() + index_of_highest_prec_op + 1);

            index_of_highest_prec_op = -1;
            highest_prec = -1;
        }

        return std::move(parsed_expressions.at(0));
    @endcode
    */
    std::unique_ptr<ast::top_level_expr> parse_expression() {

        std::vector<lexer::Token_Type> single_nested_expr_tokens; // stores the sub token stream
        std::vector<std::optional<lexer::lexer_stored_values>> single_nested_expr_values; // stores the values adjacent to the token stream (can be a nullopt)
        std::vector<std::unique_ptr<ast::top_level_expr>> parsed_expressions; // stores the parsed expressions, eventually should be a single value that we extract and return
        std::vector<lexer::Token_Type> operators; // the intermediary operators

        int paren_count = 0;
        std::unique_ptr<ast::top_level_expr> current_expr = nullptr;
        
        while ((current_token_as_token != lexer::tok_semicolon) && (current_token_as_token != lexer::tok_close_paren || paren_count > 0)) { // while it is an expression.. 
            // need to aggregate tokens until we find an operator

            current_expr = parse_primary_expression(current_token_as_token, current_value.value());

            if (current_expr == nullptr) {
                utility::parser_error("Parsed expression is null", current_line);
            }

            parsed_expressions.push_back(std::move(current_expr));

            if ((current_token_as_token == lexer::tok_semicolon) || (current_token_as_token == lexer::tok_close_paren && paren_count <= 0) || (current_token_as_token == lexer::tok_comma)) break;

            if (!lexer::is_operator(current_token_as_token)) {
                utility::parser_error("Expected infix operator in expression", current_line);
            }


            operators.push_back(current_token_as_token);

            get_next_token(); // consume the operator
        }

        if (paren_count != 0) {
            utility::parser_error("Number of parenthesis do not match", current_line);
        }

        if (operators.size() != parsed_expressions.size() - 1) {
            utility::parser_error("Number of infix operators does not match number of expressions", current_line);
        }

        int index_of_highest_prec_op = -1;
        int highest_prec = -1;
        lexer::Token_Type current_op;
        while (operators.size() != 0) {

            for (int i = 0; i < operators.size(); i++) {
                current_op = operators.at(i);
                if (operator_precedence.find(current_op) != operator_precedence.end()) {
                    if (operator_precedence[current_op] > highest_prec) {
                        highest_prec = operator_precedence[current_op];
                        index_of_highest_prec_op = i;
                    }
                }
            }

            if (index_of_highest_prec_op == -1) {
                utility::parser_error("Operator not found in operator map", current_line);
            }

            // highest prec => if is 0, then between 0 and 1, if 1, then between 1 and 2
            current_op = current_op = operators.at(index_of_highest_prec_op);
            operators.erase(operators.begin() + index_of_highest_prec_op);

            // overwrite the value with a parsed binary expression at index of highest prec op
            // delete the expression at index of highest prec op + 1
            auto left_expr = std::move(parsed_expressions.at(index_of_highest_prec_op));
            auto right_expr = std::move(parsed_expressions.at(index_of_highest_prec_op + 1));

            parsed_expressions.at(index_of_highest_prec_op) = parse_binary_expr(std::move(left_expr), std::move(right_expr), current_op);
            parsed_expressions.erase(parsed_expressions.begin() + index_of_highest_prec_op + 1);

            index_of_highest_prec_op = -1;
            highest_prec = -1;
        }

        return std::move(parsed_expressions.at(0));
    }
    
    /**
     * @par When called, parses tokens into leaf nodes of our AST.
     * 
     * @param prev_tok The token being parsed as a primary expression,
     * @param top_level This indicates whether or not the expression is or isn't nested within a binary expression. (true = not in binary_expr)
     * @param value A paramter that passes the value associated with the primary expression, whether it be a float, boolean, string, etc...
     * @code
        if (prev_tok == lexer::tok_int_val) return std::move(parse_int_expr(value));
        if (prev_tok == lexer::tok_float_val) return std::move(parse_float_expr(value));
        if (prev_tok == lexer::tok_char_val) return std::move(parse_char_expr(value));
        if (prev_tok == lexer::tok_string_val) return std::move(parse_string_expr(value));
        if (prev_tok == lexer::tok_true) return std::move(parse_bool_expr(value));
        if (prev_tok == lexer::tok_false) return std::move(parse_bool_expr(value));
        if (prev_tok == lexer::tok_identifier) {
            if (current_token_as_token == lexer::tok_open_paren) {
                return std::move(parse_func_call(std::get<std::string>(value)));
            }
            return std::move(parse_identifier_expr(value)); 
        }
     * @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_primary_expression(lexer::Token_Type prev_tok, lexer::lexer_stored_values value) {
        if (prev_tok == lexer::tok_int_val) return std::move(parse_int_expr(value));
        if (prev_tok == lexer::tok_float_val) return std::move(parse_float_expr(value));
        if (prev_tok == lexer::tok_char_val) return std::move(parse_char_expr(value));
        if (prev_tok == lexer::tok_string_val) return std::move(parse_string_expr(value));
        if (prev_tok == lexer::tok_true) return std::move(parse_bool_expr(value));
        if (prev_tok == lexer::tok_false) return std::move(parse_bool_expr(value));

        if (prev_tok == lexer::tok_identifier) {
            if (lexer::peek_token(current_token_index) == lexer::tok_open_paren) {
                return std::move(parse_func_call(std::get<std::string>(value)));
            }
            if (lexer::peek_token(current_token_index) == lexer::tok_dot) {
                return std::move(parse_method_dot_call());
            }

            return std::move(parse_identifier_expr(value)); 
        }
        

        utility::parser_error("Primary expression not recognized", current_line);
        return nullptr;
    }

    /**
     * @par Fully handles the recursive parsing of binary expressions.
     * @param left The left expression.
     * @param right The right expression.
     * @param operand The infix operator.
     * @code
     * auto ast_node = std::make_unique<ast::binary_expr>(operator, std::move(left), std::move(right));
       return std::move(ast_node); 
     * @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_binary_expr(std::unique_ptr<ast::top_level_expr> left, std::unique_ptr<ast::top_level_expr> right, lexer::Token_Type operand) {
        auto ast_node = std::make_unique<ast::binary_expr>(operand, std::move(left), std::move(right));

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
    *   type_enum::types type = parse_type();
        std::string identifier;

        get_next_token();
    * @endcode

      @par We then store the identifier, and put it in the type map.
      
      @code
        std::optional<lexer::lexer_stored_values> value = current_value;;

        if (value.has_value()) {
            if (std::holds_alternative<std::string>(value.value())) {
                identifier = std::get<std::string>(value.value());
            } 
            else {
                utility::parser_error("Expected identifier", current_line);
            }
        }

        get_next_token();

      @endcode

      @par We then check whether the next token is an '=', or a ';', ',', or an ')' and call the respective declaration, or definition token.

      @code
        if (current_token == lexer::tok_assignment) {
            return std::move(parse_var_defn(type, identifier));
        } else if (current_token == lexer::tok_semicolon || current_token == lexer::tok_comma || current_token == lexer::tok_close_paren) {
            return std::move(parse_var_decl(type, identifier));
        
        utility::parser_error("Expected variable definition or declaration", current_line);

      @endcode
    */
    std::unique_ptr<ast::top_level_expr> parse_var_decl_defn() {
        type_enum::types type = parse_type();
        std::string identifier;
        get_next_token(); // consume the type

        std::optional<lexer::lexer_stored_values> value = current_value;

        if (value.has_value()) {
            if (std::holds_alternative<std::string>(value.value())) {
                identifier = std::get<std::string>(value.value());
            } 
            else {
                utility::parser_error("Expected identifier", current_line);
            }
        }
        get_next_token(); // consume the identifier

        if (current_token == lexer::tok_assignment) {
            return std::move(parse_var_defn(type, identifier));
        } else if (current_token == lexer::tok_semicolon || current_token == lexer::tok_comma || current_token == lexer::tok_close_paren) {
            return std::move(parse_var_decl(type, identifier));
        } 
        utility::parser_error("Expected variable definition or declaration", current_line);
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
    std::unique_ptr<ast::top_level_expr> parse_var_decl(type_enum::types type, std::string identifier) {

        auto ast_node = std::make_unique<ast::variable_declaration>(type, identifier);

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        return std::move(ast_node);

    }

    /**
     * @par Parses a variable definition, and returns an AST node.
     * 
     * @code
        get_next_token(); // consume the '='
        auto assigned_expr = parse_expression();

        if (assigned_expr->get_expr_type() != type) {
            utility::parser_error("Defining a variable with incorrect type", current_line);
        }
        
        auto ast_node = std::make_unique<ast::variable_definition>(type, identifier, std::move(assigned_expr));
        return std::move(ast_node);
     * @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_var_defn(type_enum::types type, std::string identifier) {

        get_next_token(); // consume the '='

        auto assigned_expr = parse_expression();
        
        auto ast_node = std::make_unique<ast::variable_definition>(type, identifier, std::move(assigned_expr));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        return std::move(ast_node);
    }

    /**
     * @par Parses assignment for predefined variables
     * 
     * @par Validate that the identifier has been declared.
     * 
     * @code
     *  std::string identifier;
        std::optional<lexer::lexer_stored_values> value = current_value;
        
        if (value.has_value()) {
            if (std::holds_alternative<std::string>(value.value())) {
                identifier = std::get<std::string>(value.value());
            } 
            else {
                utility::parser_error("Expected identifier", current_line);
            }
        }

        get_next_token(); 
     * @endcode

       @par Parse the new expression assigned, and validate its type.

       @code
        auto assigned_expr = parse_expression();

        auto ast_node = std::make_unique<ast::variable_assignment>(identifier, std::move(assigned_expr));

        return std::move(ast_node);
       @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_var_assign() {
        std::string identifier;
        std::optional<lexer::lexer_stored_values> value = current_value;
        
        if (value.has_value()) {
            if (std::holds_alternative<std::string>(value.value())) {
                identifier = std::get<std::string>(value.value());
            } 
            else {
                utility::parser_error("Expected identifier", current_line);
            }
        }

        get_next_token(); // consumes the identifier


        if (current_token != lexer::tok_assignment) {
            utility::parser_error("Expected an assignment", current_line);
        }
        

        get_next_token(); // consume the '='


        auto assigned_expr = parse_expression();

        auto ast_node = std::make_unique<ast::variable_assignment>(identifier, std::move(assigned_expr));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        return std::move(ast_node);
    }

    /**
     * @par Parse function calls.
     * @param value The value corresponding to the identifier.
     * 
     * @par Grab the name, and consume the opening '('.
     * @code
     *  std::string func_name = std::get<std::string>(value);

        get_next_token(); 

        if (current_token != lexer::tok_open_paren) {
            utility::parser_error("Expected '(' before function arguments", current_line);
        }

        get_next_token(); 
     * @endcode

       @par Iterate over arguments until a ')' is reached, and parse them each as an expression.
       @code
        std::vector<std::unique_ptr<ast::top_level_expr>> arguments;

        while(current_token != lexer::tok_close_paren) {

            auto current_expression = parse_expression();
            arguments.emplace_back(std::move(current_expression));

            if (current_token != lexer::tok_comma && current_token != lexer::tok_close_paren) {
                utility::parser_error("Expected ',' delimiter between arguments, or a closing ')'", current_line);
            }

            if (current_token == lexer::tok_comma) {
                get_next_token();
            }
        }
       @endcode

       @par Consume the closing ')', create the ASt node, and return it.
       @code
        if (current_token != lexer::tok_close_paren) {
            utility::parser_error("Expected ')' after function arguments", current_line);
        }
        get_next_token(); // consume the ')'

        auto ast_node = std::make_unique<ast::func_call_expr>(func_name, std::move(arguments));

        return std::move(ast_node);
       @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_func_call(lexer::lexer_stored_values value) {
        std::string func_name = std::get<std::string>(value);

        get_next_token(); // consume the function call name

        if (current_token != lexer::tok_open_paren) {
            utility::parser_error("Expected '(' before function arguments", current_line);
        }

        get_next_token(); // consume the '('

        std::vector<std::unique_ptr<ast::top_level_expr>> arguments;

        while(current_token != lexer::tok_close_paren) {

            auto current_expression = parse_expression();
            arguments.emplace_back(std::move(current_expression));

            if (current_token != lexer::tok_comma && current_token != lexer::tok_close_paren) {
                utility::parser_error("Expected ',' delimiter between arguments, or a closing ')'", current_line);
            }

            if (current_token == lexer::tok_comma) {
                get_next_token();
            }
        }

        if (current_token != lexer::tok_close_paren) {
            utility::parser_error("Expected ')' after function arguments", current_line);
        }
        get_next_token(); // consume the ')'

        auto ast_node = std::make_unique<ast::func_call_expr>(func_name, std::move(arguments));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        return std::move(ast_node);

    }

    /**
     * @par This parses primary identifiers, and validates that they have been pre-defined
     * 
     * @param top_level Indicates whether this expresion is part of a binary subexpression.
     * @param value Stores the actual associated identifier name.
     * 
     * @code
        std::string identifier = std::get<std::string>(value);

        auto ast_node = std::make_unique<ast::identifier_expr>(identifier);

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        get_next_token();

        return std::move(ast_node);
     * @endcode.
     */
    std::unique_ptr<ast::top_level_expr> parse_identifier_expr(lexer::lexer_stored_values value) {

        std::string identifier = std::get<std::string>(value);

        auto ast_node = std::make_unique<ast::identifier_expr>(identifier);

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif
        
        get_next_token();

        return std::move(ast_node);
    }

    /**
     * @par This parses integer literals.
     * @param value Stores the actual associated integer value.
     * 
     * @code
     * auto ast_node = std::make_unique<ast::integer_expression>(lexer::integer_value);
     *  if (top_level) {
            get_next_token();
        }

         get_next_token();

        return std::move(ast_node);
        @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_int_expr(lexer::lexer_stored_values value) {
        auto ast_node = std::make_unique<ast::integer_expression>(std::get<int>(value));
        
        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        get_next_token();
        return std::move(ast_node);
    }

    /**
     * @par This parses float literals.
     * @param value Stores the actual associated float value.
     * 
     * @code
        auto ast_node = std::make_unique<ast::float_expression>(lexer::float_value);

        if (top_level) {
            get_next_token();
        }

        get_next_token();

        return std::move(ast_node);
        @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_float_expr(lexer::lexer_stored_values value) {
        auto ast_node = std::make_unique<ast::float_expression>(std::get<float>(value));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        get_next_token();
        return std::move(ast_node);
    }

    /**
     * @par This parses char literals.
     * @param value Stores the actual associated character value.
     * 
     * @code
        std::unique_ptr<ast::top_level_expr> parse_char_expr(bool top_level) {
            auto ast_node = std::make_unique<ast::char_expression>(lexer::char_value);

        get_next_token();

        return std::move(ast_node);
        @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_char_expr(lexer::lexer_stored_values value) {
        auto ast_node = std::make_unique<ast::char_expression>(std::get<char>(value));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        get_next_token();

        return std::move(ast_node);
    }


    /**
     * @par This parses string literals.
     * @param value Stores the actual associated string value.
     * 
     * @code
        auto ast_node = std::make_unique<ast::string_expression>(lexer::string_value);

        if (top_level) {
            get_next_token();
        }

        get_next_token();

        return std::move(ast_node);
        @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_string_expr(lexer::lexer_stored_values value) {
        auto ast_node = std::make_unique<ast::string_expression>(std::get<std::string>(value));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        get_next_token();
        
        return std::move(ast_node);
    }

    /**
     * @par This parses boolean literals.
     * @param value Stores the actual associated boolean value.
     * 
     * @code
        auto ast_node = std::make_unique<ast::bool_expression>(lexer::bool_value);

        if (top_level) {
            get_next_token();
        }

        get_next_token();

        return std::move(ast_node);
        @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_bool_expr(lexer::lexer_stored_values value) {
        auto ast_node = std::make_unique<ast::bool_expression>(std::get<bool>(value));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1) 
            ast_node->debug_output();
        #endif

        get_next_token();

        return std::move(ast_node);
    }

    /**
     * <h4> Parses function definitions, which is a multi-parsing process, as it makes use of many other parsing APIs. </h4>
     * 
     * def (ret_type) (func_name) (arg1, arg2, ..., argn) {
     *      expr1;
     *      expr2;
     *      ...
     *      expr n;
     * 
     *      return (expr);
     * }
     * 
     * @par Consume 'def', the return type, and the name (also storing them in the process)
     * @code
     *   get_next_token();

        type_enum::types ret_type = parse_type();
        get_next_token(); 

        std::string func_name = std::get<std::string>(lexer::stored_values.at(current_token_index - 1).value()); // grab the function name
        
        get_next_token(); 
     * @endcode

       @par Consume the opening parenthesis, then consume and store as many variable declarations as there are, and then consume the ')', and '{'.
       @code
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
                utility::parser_error("Expected ',' or ')'", current_line);
            }
            
        }

        if (current_token != lexer::tok_open_brack) {
            utility::parser_error("Expected opening bracket", current_line);
        }

        get_next_token();
       @endcode

       @par Parse expressions and store them in a vector until we reach a closing bracket.
       @code
        std::vector<std::unique_ptr<ast::top_level_expr>> expressions = parse_block();

        get_next_token(); 
       @endcode

       @par Construct the function definition node, and return it.
       @code
        auto func_definition = std::make_unique<ast::func_defn>(ret_type, func_name, std::move(expressions), std::move(parameters));
        return func_definition;
       @endcode
     */
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

        type_enum::types ret_type = parse_type();

        get_next_token(); // consume the type

        std::string func_name = std::get<std::string>(current_value.value()); // grab the function name

        get_next_token(); // consume the name

        if (current_token != lexer::tok_open_paren) {
            utility::parser_error("Expected '('", current_line);
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
                utility::parser_error("Expected ',' or ')'", current_line);
            }
            
        }

        if (current_token != lexer::tok_open_brack) {
            utility::parser_error("Expected opening bracket", current_line);
        }
        get_next_token(); // consume the bracket

        std::vector<std::unique_ptr<ast::top_level_expr>> expressions = parse_block();

        get_next_token(); // consume the '}'

        // instantiate the ast node and return it
        auto func_definition = std::make_unique<ast::func_defn>(ret_type, func_name, std::move(expressions), std::move(parameters));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            func_definition->debug_output();
        #endif

        return func_definition;

    }

    /**
     * @par Parses a return expression and then returns a return_expr ast node
     * "return (expr);"
     * 
     * @code
     *  get_next_token();
     *  if (current_token == lexer::tok_semicolon) {
            return(std::move(std::make_unique<ast::return_expr>(nullptr)));
        }
        auto expr_node = parse_expression();

        if (auto* binary_expr_node = dynamic_cast<ast::binary_expr*>(expr_node.get())) {
            get_next_token();
        }

        auto ast_node = std::make_unique<ast::return_expr>(std::move(expr_node));
        return std::move(ast_node);
     * @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_return() {
        get_next_token();
        if (current_token == lexer::tok_semicolon) { // deal with void return types
            return(std::move(std::make_unique<ast::return_expr>(nullptr)));
        }
        auto expr_node = parse_expression();

        auto ast_node = std::make_unique<ast::return_expr>(std::move(expr_node));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        return std::move(ast_node);
    }

    /**
     * <h4> Parses through if statement blocks. </h4>
     * 
     * if (condition) {
     *      expr1;
     *      expr2;
     *      ...
     *      exprn;
     * } (OPTIONAL) else {
     *      ...
     * }
     * 
     * @par Consumes header components of if block and storces the condition "if (cond) {"
     * @code
     *  get_next_token();

        if (current_token != lexer::tok_open_paren) {
            utility::parser_error("Exprected '('", current_line);
        }

        get_next_token();

        auto condition = parse_expression(); 

        if (current_token != lexer::tok_close_paren) {
            utility::parser_error("Expected ')'", current_line);
        }

        get_next_token();

        if (current_token != lexer::tok_open_brack) {
            utility::parser_error("Exprected '{'", current_line);
        }

        get_next_token(); 
     * @endcode

       @par Parse through all expressions contained within the if block, and store them.
       @code
        std::vector<std::unique_ptr<ast::top_level_expr>> expressions = parse_block();

        if (current_token != lexer::tok_close_brack) {
            utility::parser_error("Expected closing bracket for if expression", current_line);
        }

        get_next_token(); 
       @endcode

       @par Check if an else statement comes after the if block, and if so parse it. Otherwise just store it as a nullptr. Then return the if node.
       @code
        std::unique_ptr<ast::top_level_expr> else_stmt = nullptr;

        if (current_token == lexer::tok_else) {
            else_stmt = parse_else(); 
        }

        auto if_node = std::make_unique<ast::if_expr>(std::move(condition), std::move(expressions), std::move(else_stmt));
        return std::move(if_node);
       @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_if() {
        get_next_token(); // consume the if

        if (current_token != lexer::tok_open_paren) {
            utility::parser_error("Exprected '('", current_line);
        }

        get_next_token(); // consume the (

        auto condition = parse_expression(); 

        
        if (current_token != lexer::tok_close_paren) {
            utility::parser_error("Expected ')'", current_line);
        }

        get_next_token(); // consume the )

        if (current_token != lexer::tok_open_brack) {
            utility::parser_error("Expected '{'", current_line);
        }

        get_next_token(); // consume the {

        std::vector<std::unique_ptr<ast::top_level_expr>> expressions = parse_block();

        if (current_token != lexer::tok_close_brack) {
            utility::parser_error("Expected closing bracket for if expression", current_line);
        }

        get_next_token(); // consume the '}'

        std::unique_ptr<ast::top_level_expr> else_stmt = nullptr;

        if (current_token == lexer::tok_else) {
            else_stmt = parse_else(); 
        }

        auto if_node = std::make_unique<ast::if_expr>(std::move(condition), std::move(expressions), std::move(else_stmt));

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            if_node->debug_output();
        #endif

        return std::move(if_node);
    }
    
    /**
     * @par Parses else expressions
     * 
     * @par Handle else if statements.
     * @code
     *  if (current_token == lexer::tok_if) {
            std::vector<std::unique_ptr<ast::top_level_expr>> if_expression;
            if_expression.emplace_back(parse_if());
            return std::make_unique<ast::else_expr>(std::move(if_expression), true);
        }
     * @endcode

       @par Otherwise we are in a raw else expression, so handle that case.

       @par Parse expressions until we encounter a closing bracket.
       @code
        std::vector<std::unique_ptr<ast::top_level_expr>> expressions = parse_block();
       @endcode

       @par Generate an else expression AST node.
       @code
        return std::make_unique<ast::else_expr>(std::move(expressions), false);
       @endcode
     */
    std::unique_ptr<ast::top_level_expr> parse_else() {
        if (current_token != lexer::tok_else) {
            utility::parser_error("Exprected else keyword in else expression", current_line);
        }
        get_next_token(); // consume the else

        if (current_token == lexer::tok_if) {
            std::vector<std::unique_ptr<ast::top_level_expr>> if_expression;
            if_expression.emplace_back(parse_if());
            return std::make_unique<ast::else_expr>(std::move(if_expression), true);
        }

        if (current_token != lexer::tok_open_brack) {
            utility::parser_error("Expected opening bracket for else expression", current_line);
        }

        get_next_token(); // consume the '{'

        std::vector<std::unique_ptr<ast::top_level_expr>> expressions = parse_block();

        if (current_token != lexer::tok_close_brack) {
            utility::parser_error("Expected closing bracket", current_line);
        }
        get_next_token(); // consume the closing bracket

        auto ast_node = std::make_unique<ast::else_expr>(std::move(expressions), false);
       
        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        return std::move(ast_node);
    }

    /**
     * @par Handle print expressions by parsing an internal expression to the print statement.
     * @code
        if (current_token != lexer::tok_print) {
            utility::parser_error("Expected print keyword", current_line);
        }
        get_next_token(); 
        if (current_token != lexer::tok_open_paren) {
            utility::parser_error("Expected '('", current_line);
        }
        get_next_token(); 
        auto expression = parse_expression();
        if (current_token != lexer::tok_close_paren) {
            utility::parser_error("Expected ')'", current_line);
        }
        get_next_token(); 
        return std::make_unique<ast::print_expr>(std::move(expression));
     * @endcode
     * 
     */
    std::unique_ptr<ast::top_level_expr> parse_print() {
        if (current_token != lexer::tok_print) {
            utility::parser_error("Expected print keyword", current_line);
        }

        get_next_token(); // consume the print keyword

        if (current_token != lexer::tok_open_paren) {
            utility::parser_error("Expected '('", current_line);
        }

        get_next_token(); // consume the '('

        auto expression = parse_expression();

        if (current_token != lexer::tok_close_paren) {
            utility::parser_error("Expected ')'", current_line);
        }

        get_next_token(); // consume the closing ')'

        return std::make_unique<ast::print_expr>(std::move(expression));
    }
    
    /**
     * @par Parses graph declarations.
     * 
     * @par Resolve the type.
     * @code
        type_enum::types type = pares_type();
     * @endcode

     @par Grab the name.
     @code
        std::string graph_name = std::get<std::string>(current_value.value());
     @endcode

     @par Create the AST Node and return it.
     @code
        auto ast_node = std::make_unique<ast::graph_decl_expr>(type, graph_name);
        return ast_node;
     @endcode

     */
    std::unique_ptr<ast::top_level_expr> parse_graph_decl() {
        if (utility::library_and_include.find("graph") == utility::library_and_include.end()) {
            utility::parser_error("Attempting to use graph without include directive (graph)", current_line);
        }
        
        if (utility::library_and_include.find("list") == utility::library_and_include.end()) {
            utility::parser_error("Attempting to use graph without include directive (list)", current_line);
        }

        if (current_token != lexer::tok_graph) {
            utility::parser_error("Expected token graph", current_line);
        }

        get_next_token(); // consume the 'graph' keyword
        
        type_enum::types type = parse_type();

        get_next_token(); // consume the type

        std::string graph_name = std::get<std::string>(current_value.value()); // grab the name

        get_next_token(); // consume the name

        auto ast_node = std::make_unique<ast::graph_decl_expr>(type, graph_name);

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        return ast_node;
    }

    /**
     * TODO: docs
     */
    std::unique_ptr<ast::top_level_expr> parse_list_decl() {
        if (utility::library_and_include.find("list") == utility::library_and_include.end()) {
            utility::parser_error("Attempting to use list without include directive", current_line);
        }

        if (current_token != lexer::tok_list) {
            utility::parser_error("Expected list keyword", current_line);
        }

        get_next_token(); // consume the list keyword

        type_enum::types type = parse_type();

        get_next_token(); // consume the type

        std::string list_name = std::get<std::string>(current_value.value());

        get_next_token(); // consume the name

        auto ast_node = std::make_unique<ast::list_decl>(type, list_name);

        #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
            ast_node->debug_output();
        #endif

        return ast_node;
    }

    std::unique_ptr<ast::top_level_expr> parse_method_dot_call() {

        std::string item_name = std::get<std::string>(current_value.value());
        get_next_token(); 

        if (current_token != lexer::tok_dot) {
            utility::parser_error("Expected a dot call", current_line);
        }

        get_next_token(); // consume the dot


        std::string called = dot_call_method_helper();

        get_next_token();

        if (current_token == lexer::tok_semicolon) {
            auto ast_node = std::make_unique<ast::dot_call_var>(item_name, called);   
            
            #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
                ast_node->debug_output();
            #endif

            return ast_node;
        } else if (current_token == lexer::tok_open_paren) {
            get_next_token(); // consume the opening parenthesis

            std::vector<std::unique_ptr<ast::top_level_expr>> arguments;      

            while (true) {
                auto current_expr = parse_expression();
                arguments.emplace_back(std::move(current_expr));

                
                if (current_token == lexer::tok_comma) {
                    get_next_token();
                } else if (current_token == lexer::tok_close_paren) {
                    get_next_token();
                    break;
                } else {
                    utility::parser_error("Expected ',' or ')'", current_line);
                }
            }
            auto ast_node = std::make_unique<ast::method_dot_call>(item_name, called, std::move(arguments));  
            #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
                ast_node->debug_output();
            #endif

            return ast_node;
        } else {
            utility::parser_error("Expected ; or '(' on dot call", current_line);
        }
    }

    /**
     * TODO: docs
     */
    std::string parse_include() {
        if (current_token != lexer::tok_include) {
            utility::parser_error("Expected include directive", current_line);
        }
        get_next_token(); // consume the include directive
        switch (current_token) {
            case (lexer::tok_list):
                get_next_token();
                return "list";
            case (lexer::tok_graph): {
                get_next_token();
                return "graph";
            }
            default:
                utility::parser_error("Invalid item included", current_line);
        }
    }


    namespace {

        /**
         * TODO: docs
         */
        std::string dot_call_method_helper() {
            if (current_value.has_value() && std::holds_alternative<std::string>(current_value.value())) {
                return std::get<std::string>(current_value.value());
            } else {
                utility::parser_error("Expected identifiable dot call", current_line);
            }
        }

        /**
         * @par Parses a block within a scope that exists above the global scope (different from the utility level parsing dispatcher).
         * @code
            std::unique_ptr<ast::top_level_expr> current_expr;
            std::vector<std::unique_ptr<ast::top_level_expr>> expressions;
            while (current_token != lexer::tok_close_brack) {
                switch (current_token) {
                    case lexer::tok_int: case lexer::tok_float: case lexer::tok_char: case lexer::tok_string: case lexer::tok_bool: 
                        current_expr = parse_var_decl_defn();
                        break;
                    case lexer::tok_return: // validate we are in a function here
                        current_expr = parse_return();
                        break;
                    case lexer::tok_identifier:
                        if (lexer::peek_token(current_token_index) == lexer::tok_assignment) {
                            current_expr = parse_var_assign();
                            break;
                        } else {
                            current_expr = parse_expression();
                            break;
                        }
                    case lexer::tok_semicolon:
                        get_next_token();
                        current_expr = nullptr;
                        break;
                    case lexer::tok_if:
                        current_expr = parse_if();
                        break;
                    case lexer::tok_list:
                        current_expr = parse_list_decl();
                        break;
                    case lexer::tok_graph:
                        current_expr = parse_graph_decl();
                        break;
                    case lexer::tok_print:
                        current_expr = parse_print();
                        break;
                    default:
                        current_expr = parse_expression();
                }

                if (current_expr != nullptr) {
                    expressions.push_back(std::move(current_expr));
                }
            }

            return std::move(expressions);
         * @endcode
         */
        std::vector<std::unique_ptr<ast::top_level_expr>> parse_block() {
            std::unique_ptr<ast::top_level_expr> current_expr;
            std::vector<std::unique_ptr<ast::top_level_expr>> expressions;
            while (current_token != lexer::tok_close_brack) {
                switch (current_token) {
                    case lexer::tok_int: case lexer::tok_float: case lexer::tok_char: case lexer::tok_string: case lexer::tok_bool: 
                        current_expr = parse_var_decl_defn();
                        break;
                    case lexer::tok_return: // validate we are in a function here
                        current_expr = parse_return();
                        break;
                    case lexer::tok_identifier:
                        if (lexer::peek_token(current_token_index) == lexer::tok_assignment) {
                            current_expr = parse_var_assign();
                            break;
                        } else if (lexer::peek_token(current_token_index) == lexer::tok_dot) {
                            current_expr = parse_method_dot_call();
                            break;
                        } else {
                            current_expr = parse_expression();
                            break;
                        }
                    case lexer::tok_semicolon:
                        get_next_token();
                        current_expr = nullptr;
                        break;
                    case lexer::tok_if:
                        current_expr = parse_if();
                        break;
                    case lexer::tok_graph:
                        current_expr = parse_graph_decl();
                        break;
                    case lexer::tok_list:
                        current_expr = parse_list_decl();
                        break;
                    case lexer::tok_print:
                        current_expr = parse_print();
                        break;
                    default:
                        current_expr = parse_expression();
                }

                if (current_expr != nullptr) {
                    expressions.push_back(std::move(current_expr));
                }
            }

            return std::move(expressions);
        }

        /**
         * @par Dispatched when we expect to extract a type from a particular token keyword.
         * @code
            type_enum::types type;
            switch (current_token) {
                case lexer::tok_int:
                    type = type_enum::int_type;
                    break;
                case lexer::tok_float:
                    type = type_enum::float_type;
                    break;
                case lexer::tok_char:
                    type = type_enum::char_type;
                    break;
                case lexer::tok_string:
                    type = type_enum::string_type;
                    break;
                case lexer::tok_bool:
                    type = type_enum::bool_type;
                    break;
                default:
                    utility::parser_error("Unsupported type for graphs", current_line);
            }

            return type;
         * @endcode
         */
        type_enum::types parse_type() {
            type_enum::types type;
            switch (current_token) {
                case lexer::tok_int:
                    type = type_enum::int_type;
                    break;
                case lexer::tok_float:
                    type = type_enum::float_type;
                    break;
                case lexer::tok_char:
                    type = type_enum::char_type;
                    break;
                case lexer::tok_string:
                    type = type_enum::string_type;
                    break;
                case lexer::tok_bool:
                    type = type_enum::bool_type;
                    break;
                default:
                    utility::parser_error("Unsupported type for graphs", current_line);
            }

            return type;
        }

    }
}