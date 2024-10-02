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
     * @par Thrown to abort if codegen fails.
     * 
     * @code
        std::cout <<"\033[1;31m";
        std::cout << "Codegen error: " << message << " on line " << line << "\n";
        std::abort();
     * @endcode
     */
    void codegen_error(const std::string& message, int line) {
        std::cout <<"\033[1;31m";
        std::cout << "Codegen error: " << message << " on line " << line << "\n";
        std::abort();
    }

    /**
     * @par Thrown to abort if scoping fails.
     * 
     * @code
        std::cout <<"\033[1;31m";
        std::cout << "Scoping error: " << message << " on line " << line << "\n";
        std::abort();
     * @endcode
     */
    void scoping_error(const std::string& message, int line) {
        std::cout <<"\033[1;31m";
        std::cout << "Scoping error: " << message << " on line " << line << "\n";
        std::abort();
    }

    void sem_analysis_error(const std::string& message, int line) {
        std::cout <<"\033[1;31m";
        std::cout << "Semantic analysis error: " << message << " on line " << line << "\n";
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
     * @par Where operator precednce map is defined (Higher values called later)
     * 
     * @code
        parser::operator_precedence.insert({lexer::tok_plus, 1000});
        parser::operator_precedence.insert({lexer::tok_minus, 900});
        parser::operator_precedence.insert({lexer::tok_mult, 800});
        parser::operator_precedence.insert({lexer::tok_div, 700});
     * @endcode
     */
    void initialize_operator_precendence() {
        parser::operator_precedence.insert({lexer::tok_plus, 1000});
        parser::operator_precedence.insert({lexer::tok_minus, 900});
        parser::operator_precedence.insert({lexer::tok_mult, 800});
        parser::operator_precedence.insert({lexer::tok_div, 700});
    }

    /**
     * @par This is where we setup the LLVM Context, Modulem, and IR Builder.
     * 
     * @code
     *  codegen::LLVM_Context = std::make_unique<llvm::LLVMContext>();
        codegen::LLVM_Module = std::make_unique<llvm::Module>("__top_level_module__", *codegen::LLVM_Context);
        codegen::IR_Builder = std::make_unique<llvm::IRBuilder<>>(*codegen::LLVM_Context);
     * @endcode

     * @par We place the current module into a top level void function to avoid explicit global variables, and instead are able to place them on the stack. We then set the 
        entry point to the top level function, allowing the creation of load and store instructions on globals.
     *
       @code
        llvm::FunctionType* function_type = llvm::FunctionType::get(llvm::Type::getVoidTy(*codegen::LLVM_Context), false);

        llvm::Function* top_level_function = llvm::Function::Create(
            funcType, llvm::Function::ExternalLinkage, "__file__", *codegen::LLVM_Module
        );

        llvm::BasicBlock* top_level_entry_point = llvm::BasicBlock::Create(*codegen::LLVM_Context, "__top_level_entry_point__", top_level_function);
        codegen::IR_Builder->SetInsertPoint(top_level_entry_point);
       @endcode
     * 
     */
    void init_llvm_mods() {
        
        codegen::LLVM_Context = std::make_unique<llvm::LLVMContext>();
        codegen::LLVM_Module = std::make_unique<llvm::Module>("__top_level_module__", *codegen::LLVM_Context);
        codegen::IR_Builder = std::make_unique<llvm::IRBuilder<>>(*codegen::LLVM_Context);

        llvm::FunctionType* function_type = llvm::FunctionType::get(llvm::Type::getVoidTy(*codegen::LLVM_Context), false);

        llvm::Function* top_level_function = llvm::Function::Create(
            function_type, llvm::Function::ExternalLinkage, "__file__", *codegen::LLVM_Module
        );

        codegen::top_level_entry = llvm::BasicBlock::Create(*codegen::LLVM_Context, "__top_level_entry_point__", top_level_function);
        
        codegen::IR_Builder->SetInsertPoint(codegen::top_level_entry);
    }

    /**
     * @par Called after all IR has been generated. Creates return out of the top level function, and then exits.
     * 
     * @code
     *  codegen::IR_Builder->CreateRetVoid();
     * @endcode
     */
    void end_llvm_mods() {
        codegen::IR_Builder->CreateRetVoid();
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
                    if (!sem_analysis_scope::global_contains_func_defn(std::get<std::string>(parser::current_value.value()))) {
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
                    if (!sem_analysis_scope::global_contains_func_defn(std::get<std::string>(parser::current_value.value()))) {
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
                std::get<0>(ast_node)->semantic_analysis();
            } else if (std::holds_alternative<std::unique_ptr<ast::func_defn>>(ast_node)) {
                std::get<1>(ast_node)->semantic_analysis();
            }
        }

        sem_analysis_scope::exit_scope();
    }

}