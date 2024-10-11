/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/


#include "../include/utility/utility.h"
#include <csignal>
#include <unistd.h>
#include <cstdlib>  
#include <iostream> 

namespace utility {

    /**
     * @par Gets called to abort if input file does not have a .pyrx extension.
     * 
     * @code
        std::cout <<"\033[1;31m";
        std::cout << "Driver error: " << message << file_name << " please add a .pyrx extension.\n";
        exit(1);
     * @endcode
     */
    void driver_extension_error(const std::string& message, const std::string& file_name) {
        std::cout <<"\033[1;31m";
        std::cout << "Driver error: " << message << file_name << " please add a .pyrx extension.\n";
        exit(1);
    }

    /**
     * @par Gets called to abort if the number of arguments provided in CMD line is invalid.
     * 
     * @code
     *  std::cout <<"\033[1;31m";
        std::cout << "Driver error: " << num_args - 1 << " provided, but only expected relative path to .pyrx file.\n";
        exit(1);
     * @endcode
     */
    void driver_args_error(const int num_args) {
        std::cout <<"\033[1;31m";
        std::cout << "Driver error: " << num_args - 1 << " provided, but only expected relative path to .pyrx file.\n";
        exit(1);
    }
    
    /**
     * @par Thrown to abort if lexing fails.
     * 
     * @code
        std::cout <<"\033[1;31m";
        std::cout << "Lexer error: " << message << " on line " << line << "\n";
        exit(1);
     * @endcode
     */
    void lexer_error(const std::string& message, int line) {
        std::cout <<"\033[1;31m";
        std::cout << "Lexer error: " << message << " on line " << line << "\n";
        exit(1);
    }

    /**
     * @par Thrown to abort if parsing fails.
     * 
     * @code
        std::cout <<"\033[1;31m";
        std::cout << "Parser error: " << message << " on line " << line << "\n";
        exit(1);
     * @endcode
     */
    void parser_error(const std::string& message, int line) {
        std::cout <<"\033[1;31m";
        std::cout << "Parser error: " << message << " on line " << line << "\n";
        exit(1);
    }

    /**
     * @par Thrown to abort if codegen fails.
     * 
     * @code
        std::cout <<"\033[1;31m";
        std::cout << "Codegen error: " << message << " on line " << line << "\n";
        exit(1);
     * @endcode
     */
    void codegen_error(const std::string& message, int line) {
        std::cout <<"\033[1;31m";
        std::cout << "Codegen error: " << message << " on line " << line << "\n";
        exit(1);
    }

    /**
     * @par Thrown to abort if scoping fails.
     * 
     * @code
        std::cout <<"\033[1;31m";
        std::cout << "Scoping error: " << message << " on line " << line << "\n";
        exit(1);
     * @endcode
     */
    void scoping_error(const std::string& message, int line) {
        std::cout <<"\033[1;31m";
        std::cout << "Scoping error: " << message << " on line " << line << "\n";
        exit(1);
    }

    void sem_analysis_error(const std::string& message, int line) {
        std::cout <<"\033[1;31m";
        std::cout << "Semantic analysis error: " << message << " on line " << line << "\n";
        exit(1);
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
     * @par Where operator precednce map is defined (Higher values called later)
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

    /**
     * @par This is where we setup the LLVM Context, Modulem, and IR Builder.
     * 
     * @code
     *  codegen::LLVM_Context = std::make_unique<llvm::LLVMContext>();
        codegen::LLVM_Module = std::make_unique<llvm::Module>("__top_level_module__", *codegen::LLVM_Context);
        codegen::IR_Builder = std::make_unique<llvm::IRBuilder<>>(*codegen::LLVM_Context);
     * @endcode
     * 
     */
    void init_llvm_mods() {
        codegen::LLVM_Context = std::make_unique<llvm::LLVMContext>();
        codegen::LLVM_Module = std::make_unique<llvm::Module>("__top_level_module__", *codegen::LLVM_Context);
        codegen::IR_Builder = std::make_unique<llvm::IRBuilder<>>(*codegen::LLVM_Context);
    }


    /**
     * @par Initializes all values in the parser token getter method.
     * 
     * @code
        parser::current_token_index = 0;
        parser::current_token_as_token = lexer::token_stream.at(parser::current_token_index);
        parser::current_value = lexer::stored_values.at(parser::current_token_index);
        parser::current_line = lexer::line_count_vec.at(parser::current_token_index);
        parser::current_token = parser::current_token_as_token;
     * @endcode
     */
    void init_parser() {
        parser::current_token_index = 0;
        parser::current_token_as_token = lexer::token_stream.at(parser::current_token_index);
        parser::current_value = lexer::stored_values.at(parser::current_token_index);
        parser::current_line = lexer::line_count_vec.at(parser::current_token_index);
        parser::current_token = parser::current_token_as_token;
    }

    /**
     * @par This is called in both drivers (entrypoints), that takes in the current token stored in `parser::current_token`, and calls the correct parsing function and codegen if applicable.
     * 
     * @code
        scope::create_scope();
        parser::get_next_token();

        std::vector<std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>> parsing_output;

        while (true) {
            

            #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
                if (parser::current_token != lexer::tok_eof && parser::current_token != lexer::tok_semicolon && parser::current_token != lexer::tok_def) {
                    std::cout << "\033[32m\nParsing New Statement:\033[0m\n";
                } else if (parser::current_token == lexer::tok_def) {
                    std::cout << "\033[32m\nParsing New Function:\033[0m\n";
                }
            #endif
            
            std::unique_ptr<ast::top_level_expr> expr = nullptr;  
            std::unique_ptr<ast::func_defn> func = nullptr;  

            switch(parser::current_token) {
                case lexer::tok_eof: // if its the end of the file, exit the loop
                    return;
                case lexer::tok_semicolon:
                    parser::get_next_token(); // ignore semicolons and get the next token...
                    break; 
                case lexer::tok_int: case lexer::tok_float: case lexer::tok_char: case lexer::tok_string: case lexer::tok_bool:
                    expr = parser::parse_var_decl_defn();
                    parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                    break;
                case lexer::tok_identifier: 
                    if (lexer::peek_token(parser::current_token_index) == lexer::tok_assignment) {
                        expr = parser::parse_var_assign();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;
                    } else{
                        expr = parser::parse_expression();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;
                    }
                case lexer::tok_def:
                    func = parser::parse_function();
                    parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(func)));
                    break;
                case lexer::tok_return:
                    expr = parser::parse_return();
                    parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                    break;
                case lexer::tok_if:
                    expr = parser::parse_if();
                    parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                    break;
                default:
                    expr = parser::parse_expression();
                    parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                    break;
            }
        }

        for (auto const& ast_node : parsing_output) {
            if (std::holds_alternative<std::unique_ptr<ast::top_level_expr>>(ast_node)) {
                if (std::get<0>(ast_node)->get_ast_class() != "int" && 
                    std::get<0>(ast_node)->get_ast_class() != "float" && 
                    std::get<0>(ast_node)->get_ast_class() != "char" && 
                    std::get<0>(ast_node)->get_ast_class() != "string" && 
                    std::get<0>(ast_node)->get_ast_class() != "bool") 
                {
                    std::get<0>(ast_node)->semantic_analysis();
                }
            } else if (std::holds_alternative<std::unique_ptr<ast::func_defn>>(ast_node)) {
                std::get<1>(ast_node)->semantic_analysis();
            }
        }

        sem_analysis_scope::exit_scope();

        for (auto const& ast_node : parsing_output) {
            if (std::holds_alternative<std::unique_ptr<ast::top_level_expr>>(ast_node)) {
                if (std::get<0>(ast_node)->get_ast_class() != "int" && 
                    std::get<0>(ast_node)->get_ast_class() != "float" && 
                    std::get<0>(ast_node)->get_ast_class() != "char" && 
                    std::get<0>(ast_node)->get_ast_class() != "string" && 
                    std::get<0>(ast_node)->get_ast_class() != "bool")
                {
                    std::get<0>(ast_node)->codegen();
                }
            } else if (std::holds_alternative<std::unique_ptr<ast::func_defn>>(ast_node)) {
                std::get<1>(ast_node)->codegen();
            }
        }
     * @endcode
     */

    void primary_driver_loop() {
        sem_analysis_scope::create_scope();
        parser::get_next_token();

        std::vector<std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>> parsing_output;

        bool not_eof = true;

        while (not_eof) {
            

            #if (DEBUG_MODE == 1 && PARSER_PRINT_UTIL == 1)
                if (parser::current_token != lexer::tok_eof && parser::current_token != lexer::tok_semicolon && parser::current_token != lexer::tok_def) {
                    std::cout << "\033[32m\nParsing New Statement:\033[0m\n";
                } else if (parser::current_token == lexer::tok_def) {
                    std::cout << "\033[32m\nParsing New Function:\033[0m\n";
                }
            #endif
            
            std::unique_ptr<ast::top_level_expr> expr = nullptr;  
            std::unique_ptr<ast::func_defn> func = nullptr;  

            switch(parser::current_token) {
                case lexer::tok_eof: // if its the end of the file, exit the loop
                    not_eof = false;
                    break;
                case lexer::tok_semicolon:
                    parser::get_next_token(); // ignore semicolons and get the next token...
                    break; 
                case lexer::tok_int: case lexer::tok_float: case lexer::tok_char: case lexer::tok_string: case lexer::tok_bool:
                    expr = parser::parse_var_decl_defn();
                    parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                    break;
                case lexer::tok_identifier: 
                    if (lexer::peek_token(parser::current_token_index) == lexer::tok_assignment) {
                        expr = parser::parse_var_assign();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;
                    } else{
                        expr = parser::parse_expression();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;
                    }
                case lexer::tok_def:
                    func = parser::parse_function();
                    parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(func)));
                    break;
                case lexer::tok_return:
                    expr = parser::parse_return();
                    parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                    break;
                case lexer::tok_if:
                    expr = parser::parse_if();
                    parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                    break;
                default:
                    expr = parser::parse_expression();
                    parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                    break;
            }
        }

        for (auto const& ast_node : parsing_output) {
            if (std::holds_alternative<std::unique_ptr<ast::top_level_expr>>(ast_node)) {
                if (std::get<0>(ast_node)->get_ast_class() != "int" && 
                    std::get<0>(ast_node)->get_ast_class() != "float" && 
                    std::get<0>(ast_node)->get_ast_class() != "char" && 
                    std::get<0>(ast_node)->get_ast_class() != "string" && 
                    std::get<0>(ast_node)->get_ast_class() != "bool") 
                {
                    std::get<0>(ast_node)->semantic_analysis();
                }
            } else if (std::holds_alternative<std::unique_ptr<ast::func_defn>>(ast_node)) {
                std::get<1>(ast_node)->semantic_analysis();
            }
        }

        sem_analysis_scope::exit_scope();

        for (auto const& ast_node : parsing_output) {
            if (std::holds_alternative<std::unique_ptr<ast::top_level_expr>>(ast_node)) {
                if (std::get<0>(ast_node)->get_ast_class() != "int" && 
                    std::get<0>(ast_node)->get_ast_class() != "float" && 
                    std::get<0>(ast_node)->get_ast_class() != "char" && 
                    std::get<0>(ast_node)->get_ast_class() != "string" && 
                    std::get<0>(ast_node)->get_ast_class() != "bool")
                {
                    std::get<0>(ast_node)->codegen();
                }
            } else if (std::holds_alternative<std::unique_ptr<ast::func_defn>>(ast_node)) {
                std::get<1>(ast_node)->codegen();
            }
        }

        
    }

}