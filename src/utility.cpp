/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/


#include "../include/utility/utility.h"

namespace utility {

    
    void driver_extension_error(const std::string& message, const std::string& file_name) {
        std::cout <<"\033[1;31m";
        std::cout << "Driver error: " << message << file_name << " please add a .pyrx extension.\n";
        std::abort();
    }

    void driver_args_error(const int num_args) {
        std::cout <<"\033[1;31m";
        std::cout << "Driver error: " << num_args - 1 << " provided, but only expected relative path to .pyrx file.\n";
    }
    

    void lexer_error(const std::string& message, int line) {
        std::cout <<"\033[1;31m";
        std::cout << "Lexer error: " << message << " on line " << line << "\n";
        std::abort();
    }

    void parser_error(const std::string& message, int line) {
        std::cout <<"\033[1;31m";
        std::cout << "Parser error: " << message << " on line " << line << "\n";
        std::abort();
    }

    void output_current_token() {
        std::cout << parser::current_token << "\n";
    }



    void primary_driver_loop() {
        while (true) {
            switch(parser::current_token) {
                case lexer::tok_eof: // if its the end of the file, exit the loop
                    
                    #if (DEBUG_MODE == 1)
                        std::cout << "Variable Map:\n";
                        for (auto const& [key, value] : parser::var_map) {
                            std::cout << key << " : " << ast::get_type_as_string(value) << "\n";
                        }
                    #endif
                    
                    return;
                case lexer::tok_semicolon:
                    parser::get_next_token(); // ignore semicolons and get the next token...
                    break; 
                case lexer::tok_int_val: 
                    parser::parse_int_expr();
                    break;
                case lexer::tok_float_val: 
                    parser::parse_float_expr();
                    break;
                case lexer::tok_char_val: 
                    parser::parse_char_expr();
                    break;
                case lexer::tok_string_val: 
                    parser::parse_string_expr();
                    break;
                case lexer::tok_true:
                    parser::parse_bool_expr();
                    break;
                case lexer::tok_false:
                    parser::parse_bool_expr();
                    break; 
                case lexer::tok_int: case lexer::tok_float: case lexer::tok_char: case lexer::tok_string: case lexer::tok_bool:
                    parser::parse_var_decl_defn();
                    break;
                case lexer::tok_identifier:
                    parser::parse_var_assign();
                    break;
                default:
                    parser::parse_expression();
                    break;
            }
        }
    }

}