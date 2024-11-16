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

    std::set<std::string> library_and_include;

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
     * @par This is where we setup the LLVM Context, Modulem, and IR Builder. Also initialize printf function.
     * 
     * @code
     *  codegen::LLVM_Context = std::make_unique<llvm::LLVMContext>();
        codegen::LLVM_Module = std::make_unique<llvm::Module>("__top_level_module__", *codegen::LLVM_Context);
        codegen::IR_Builder = std::make_unique<llvm::IRBuilder<>>(*codegen::LLVM_Context);

        llvm::FunctionType* printfType = llvm::FunctionType::get(
            llvm::IntegerType::getInt32Ty(*codegen::LLVM_Context), 
            llvm::PointerType::get(llvm::Type::getInt8Ty(*codegen::LLVM_Context), 0), 
            true 
        );
        codegen::print_f_function = llvm::Function::Create(printfType, llvm::Function::ExternalLinkage, "printf", codegen::LLVM_Module.get());
     * @endcode
     * 
     */
    void init_llvm_mods() {
        codegen::LLVM_Context = std::make_unique<llvm::LLVMContext>();
        codegen::LLVM_Module = std::make_unique<llvm::Module>("__top_level_module__", *codegen::LLVM_Context);
        codegen::IR_Builder = std::make_unique<llvm::IRBuilder<>>(*codegen::LLVM_Context);

        
        llvm::FunctionType* printfType = llvm::FunctionType::get(
            llvm::IntegerType::getInt32Ty(*codegen::LLVM_Context), 
            llvm::PointerType::get(llvm::Type::getInt8Ty(*codegen::LLVM_Context), 0), 
            true 
        );

        codegen::print_f_function = llvm::Function::Create(printfType, llvm::Function::ExternalLinkage, "printf", codegen::LLVM_Module.get());
        
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
     *  process_includes();
     * 
        sem_analysis_scope::create_scope();
        parser::get_next_token();

        std::vector<std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>> parsing_output = parse_top_level();

        for (auto const& ast_node : parsing_output) {
            call_sem_analysis(ast_node);
        }

        sem_analysis_scope::exit_scope();

        for (auto const& ast_node : parsing_output) {
            call_codegen(ast_node);
        }
     * @endcode
     */

    void primary_driver_loop() {
        parser::get_next_token();
        process_includes();

        sem_analysis_scope::create_scope();

        std::vector<std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>> parsing_output = parse_top_level();

        for (auto const& ast_node : parsing_output) {
            call_sem_analysis(ast_node);
        }

        sem_analysis_scope::exit_scope();

        link_bc_module();

        for (auto const& ast_node : parsing_output) {
            call_codegen(ast_node);
        }
    }

    namespace {

        /**
         * TODO: docs
         */
        void link_bc_module() {
            llvm::SMDiagnostic error;
            for (const std::string& include_item : library_and_include) {
                std::string bc_path;
                if (include_item == "list") {
                    if (library_and_include.find("graph") != library_and_include.end()) {
                        return;
                    }
                    bc_path = "../pyroxene_slib/llvm_modules/list.bc";
                    //std::system("[ -e ./pyroxene_slib/llvm_modules/list.bc ] && echo 'here'");
                    
                    std::unique_ptr<llvm::Module> list_mod = llvm::parseIRFile(bc_path, error, *codegen::LLVM_Context);

                    if (list_mod == nullptr) {
                        error.print("link_bc_module", llvm::errs());
                        std::abort(); // add actually dedicated error function
                    }

                    
                    bool failed = llvm::Linker::linkModules(*codegen::LLVM_Module, std::move(list_mod));
                    if (failed) {
                        llvm::errs() << "Error linking module: " << bc_path << "\n";
                        std::abort();
                    }

                    sem_analysis_scope::add_method_to_valid_dot_calls("list", "add");
                    sem_analysis_scope::add_method_to_valid_dot_calls("list", "at");
                    sem_analysis_scope::add_method_to_valid_dot_calls("list", "remove");
                }
                if (include_item == "graph") {
                    bc_path = "../pyroxene_slib/llvm_modules/graph.bc";
                    //std::system("[ -e ./pyroxene_slib/llvm_modules/list.bc ] && echo 'here'");
                    
                    std::unique_ptr<llvm::Module> graph_mod = llvm::parseIRFile(bc_path, error, *codegen::LLVM_Context);

                    if (graph_mod == nullptr) {
                        error.print("link_bc_module", llvm::errs());
                        std::abort(); // add actually dedicated error function
                    }

                    
                    bool failed = llvm::Linker::linkModules(*codegen::LLVM_Module, std::move(graph_mod));
                    if (failed) {
                        llvm::errs() << "Error linking module: " << bc_path << "\n";
                        std::abort();
                    }

                    sem_analysis_scope::add_method_to_valid_dot_calls("graph", "addNode");
                    sem_analysis_scope::add_method_to_valid_dot_calls("graph", "addEdge");
                    sem_analysis_scope::add_method_to_valid_dot_calls("graph", "removeNode");
                    sem_analysis_scope::add_method_to_valid_dot_calls("graph", "removeEdge");
                    sem_analysis_scope::add_method_to_valid_dot_calls("graph", "BFS");
                    sem_analysis_scope::add_method_to_valid_dot_calls("graph", "printBFS");
                    sem_analysis_scope::add_method_to_valid_dot_calls("graph", "DFS");
                    sem_analysis_scope::add_method_to_valid_dot_calls("graph", "printDFS");
                }
            }
        }

        /**
         * TODO: docs
         */
        void process_includes() {
            while (parser::current_token == lexer::tok_include) {
                std::string include_statement = parser::parse_include();
                library_and_include.insert(include_statement);
            }

            for (const std::string& include_item : library_and_include) {
                compile_include_ir(include_item);
            }
        }

        /**
         * TODO: docs
         */
        void compile_include_ir(const std::string& item) {
            if (item == "list") {
                if (library_and_include.find("graph") != library_and_include.end()) {
                    return;
                }
                std::system("echo Emitting IR For List Module.");
                std::system("chmod u+x ../pyroxene_slib/list/build_module/build.sh");
                std::system("../pyroxene_slib/list/build_module/build.sh");
                return;
            }
            if (item == "graph") {
                std::system("echo Emitting IR For Graph Module.");
                std::system("chmod u+x ../pyroxene_slib/graph/build_module/build.sh");
                std::system("../pyroxene_slib/graph/build_module/build.sh");
                return;
            }
            std::abort();
        }

        /**
         * @par Primary parsing loop for the program that returns a vector of AST nodes in variant form to allow for multiple types.
         * @code
            bool not_eof = true;
            std::vector<std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>> parsing_output;
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
                        } else if (lexer::peek_token(parser::current_token_index) == lexer::tok_dot) {
                            expr = parser::parse_method_dot_call();
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
                    case lexer::tok_graph:
                        expr = parser::parse_graph_decl();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;      
                    case lexer::tok_return:
                        expr = parser::parse_return();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;
                    case lexer::tok_if:
                        expr = parser::parse_if();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;
                    case lexer::tok_print:
                        expr = parser::parse_print();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;
                    case lexer::tok_list:
                        current_expr = parser::parse_list_decl();
                        break;
                    default:
                        expr = parser::parse_expression();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;
                }
            }

            return std::move(parsing_output);
         * @endcode
         */
        std::vector<std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>> parse_top_level() {
            bool not_eof = true;
            std::vector<std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>> parsing_output;
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
                        } else if (lexer::peek_token(parser::current_token_index) == lexer::tok_dot) {
                            expr = parser::parse_method_dot_call();
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
                    case lexer::tok_graph:
                        expr = parser::parse_graph_decl();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;      
                    case lexer::tok_return:
                        expr = parser::parse_return();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;
                    case lexer::tok_if:
                        expr = parser::parse_if();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;
                    case lexer::tok_print:
                        expr = parser::parse_print();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;
                    case lexer::tok_list:
                        expr = parser::parse_list_decl();
                        break;
                    default:
                        expr = parser::parse_expression();
                        parsing_output.push_back(std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>(std::move(expr)));
                        break;
                }
            }

            return std::move(parsing_output);
        }

        /**
         * @par Extracts the correct AST node type, and calls the respective semantic analysis function.
         * @param ast_node A reference to an AST node.
         * @code
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
         * @endcode
         */
        void call_sem_analysis(const std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>& ast_node) {
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

        /**
         * @par Extracts the variant type in the reference, and calls the correct codegen method.
         * @param ast_node A reference to an AST node.
         * @code
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
         * @endcode
         */
        void call_codegen(const std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>& ast_node) {
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