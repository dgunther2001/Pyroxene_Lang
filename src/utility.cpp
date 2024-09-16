/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/


#include "../include/utility/utility.h"

namespace utility {

    /**
     * @par Gets called to abort if input file does not have a .pyrx extension.
     * 
     * @code
        std::cout <<"\033[1;31m";
        std::cout << "Driver error: " << message << file_name << " please add a .pyrx extension.\n";
        std::abort();
     * @endcode
     */
    void driver_extension_error(const std::string& message, const std::string& file_name) {
        std::cout <<"\033[1;31m";
        std::cout << "Driver error: " << message << file_name << " please add a .pyrx extension.\n";
        std::abort();
    }

    /**
     * @par Gets called to abort if the number of arguments provided in CMD line is invalid.
     * 
     * @code
     *  std::cout <<"\033[1;31m";
        std::cout << "Driver error: " << num_args - 1 << " provided, but only expected relative path to .pyrx file.\n";
        std::abort();
     * @endcode
     */
    void driver_args_error(const int num_args) {
        std::cout <<"\033[1;31m";
        std::cout << "Driver error: " << num_args - 1 << " provided, but only expected relative path to .pyrx file.\n";
        std::abort();
    }
    
    /**
     * @par Thrown to abort if lexing fails.
     * 
     * @code
        std::cout <<"\033[1;31m";
        std::cout << "Lexer error: " << message << " on line " << line << "\n";
        std::abort();
     * @endcode
     */
    void lexer_error(const std::string& message, int line) {
        std::cout <<"\033[1;31m";
        std::cout << "Lexer error: " << message << " on line " << line << "\n";
        std::abort();
    }

    /**
     * @par Thrown to abort if parsing fails.
     * 
     * @code
        std::cout <<"\033[1;31m";
        std::cout << "Parser error: " << message << " on line " << line << "\n";
        std::abort();
     * @endcode
     */
    void parser_error(const std::string& message, int line) {
        std::cout <<"\033[1;31m";
        std::cout << "Parser error: " << message << " on line " << line << "\n";
        std::abort();
    }

    /**
     * @par Spits out the current token to OStream.
     * 
     * @code
        std::cout << parser::current_token << "\n";
     * @endcode
     */
    void output_current_token() {
        std::cout << parser::current_token << "\n";
    }

    /**
     * @par Where operator precednce map is defined
     * 
     * @code
        parser::operator_precedence.insert({lexer::tok_plus, 100});
        parser::operator_precedence.insert({lexer::tok_minus, 200});
        parser::operator_precedence.insert({lexer::tok_mult, 300});
        parser::operator_precedence.insert({lexer::tok_div, 400});
     * @endcode
     */
    void initialize_operator_precendence() {
        parser::operator_precedence.insert({lexer::tok_plus, 100});
        parser::operator_precedence.insert({lexer::tok_minus, 200});
        parser::operator_precedence.insert({lexer::tok_mult, 300});
        parser::operator_precedence.insert({lexer::tok_div, 400});
    }

    void init_llvm_mods() {
        ast::LLVM_Context = std::make_unique<llvm::LLVMContext>();
        ast::LLVM_Module = std::make_unique<llvm::Module>("my_module", *ast::LLVM_Context);
    }

    /**
     * @par This is called in both drivers (entrypoints), that takes in the current token stored in `parser::current_token`, and calls the correct parsing function.
     * 
     * @code
        while (true) {
            #if (DEBUG_MODE == 1)
                if (parser::current_token != lexer::tok_eof && parser::current_token != lexer::tok_semicolon) {
                    std::cout << "\033[32m\nParsing New Statement:\033[0m\n";
                }
            #endif

            switch(parser::current_token) {
                case lexer::tok_eof:
                
                    #if (DEBUG_MODE == 1)
                        std::cout << "\033[32m\nVariable Map:\033[0m\n";
                        for (auto const& [key, value] : parser::var_map) {
                            std::cout << key << " : " << ast::get_type_as_string(value) << "\n";
                        }
                    #endif
                    
                    return;
                case lexer::tok_semicolon:
                    parser::get_next_token();
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
     * @endcode
     */
    void primary_driver_loop() {

        while (true) {
            #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
                if (parser::current_token != lexer::tok_eof && parser::current_token != lexer::tok_semicolon) {
                    std::cout << "\033[32m\nParsing New Statement:\033[0m\n";
                }
            #endif
            
            std::unique_ptr<ast::top_level_expr> expr = nullptr;  
            std::unique_ptr<ast::func_defn> func_expr = nullptr;  

            switch(parser::current_token) {
                case lexer::tok_eof: // if its the end of the file, exit the loop

                
                    #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
                        std::cout << "\033[32m\nVariable Map:\033[0m\n";
                        for (auto const& [key, value] : parser::var_map) {
                            std::cout << key << " : " << ast::get_type_as_string(value) << "\n";
                        }
                    #endif
                    
                    return;
                case lexer::tok_semicolon:
                    parser::get_next_token(); // ignore semicolons and get the next token...
                    break; 
                case lexer::tok_int: case lexer::tok_float: case lexer::tok_char: case lexer::tok_string: case lexer::tok_bool:
                    expr = parser::parse_var_decl_defn();
                    expr->codegen();
                    //parser::parse_var_decl_defn();
                    break;
                case lexer::tok_identifier:
                    expr = parser::parse_var_assign();
                    expr->codegen();
                    //parser::parse_var_assign();
                    break;
                default:
                    expr = parser::parse_expression();
                    expr->codegen();
                    //parser::parse_expression();
                    break;
            }
        }
    }

}