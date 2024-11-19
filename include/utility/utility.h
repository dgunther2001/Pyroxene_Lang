/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/

#ifndef UTILITY_H
#define UTILITY_H

#include <string>
#include <iostream>
#include <variant>
#include <set>
#include <llvm/Linker/Linker.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>

#include "../parser/parser.h"
#include "../lexer/lexer.h"
#include "../ast/ast.h"
#include "../codegen/codegen.h"
#include "../scoping/scoping.h"

#define PARSER_PRINT_UTIL 1

namespace utility {

    /**
     * @par A list of all include statements.
     */
    extern std::set<std::string> library_and_include;

    extern void driver_extension_error(const std::string& message, const std::string& file_name);
    extern void driver_args_error(const int num_args);
    extern void lexer_error(const std::string& message, int line);
    extern void parser_error(const std::string& message, int line);
    extern void codegen_error(const std::string& message, int line);
    extern void scoping_error(const std::string& message, int line);
    extern void sem_analysis_error(const std::string& message, int line);
    extern void output_current_token();
    extern void initialize_operator_precendence();

    extern void init_llvm_mods();

    extern void init_parser();
    extern void primary_driver_loop();

    namespace {
        void link_bc_module();
        void process_includes();
        void declare_graph_functions();
        void declare_list_functions();
        void compile_include_ir(const std::string& item);
        std::vector<std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>> parse_top_level();
        void call_sem_analysis(const std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>& ast_node);
        void call_codegen(const std::variant<std::unique_ptr<ast::top_level_expr>, std::unique_ptr<ast::func_defn>>& ast_node);
    }

}

#endif