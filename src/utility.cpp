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

        llvm::BasicBlock* top_level_entry_point = llvm::BasicBlock::Create(*codegen::LLVM_Context, "__top_level_entry_point__", top_level_function);
        codegen::IR_Builder->SetInsertPoint(top_level_entry_point);
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
     * @par This is called in both drivers (entrypoints), that takes in the current token stored in `parser::current_token`, and calls the correct parsing function and codegen if applicable.
     * 
     * @code
        while (true) {
            #if (DEBUG_MODE == 1)
                if (parser::current_token != lexer::tok_eof && parser::current_token != lexer::tok_semicolon) {
                    std::cout << "\033[32m\nParsing New Statement:\033[0m\n";
                }
            #endif

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
                break;
            case lexer::tok_identifier:
                expr = parser::parse_var_assign();
                expr->codegen();
                break;
            default:
                expr = parser::parse_expression();
                expr->codegen();
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
                    break;
                case lexer::tok_identifier:
                    expr = parser::parse_var_assign();
                    expr->codegen();
                    break;
                default:
                    expr = parser::parse_expression();
                    expr->codegen();
                    break;
            }
        }
    }

}