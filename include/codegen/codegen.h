/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/
#ifndef CODEGEN_H
#define CODEGEN_H

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Module.h"
#include "../ast/ast.h"
#include "../utility/utility.h"
#include "../types/types.h"
#include <map>

namespace codegen {

    /**
     * @par Contains global state, and stores all LLVM related data within it. It manages, and ensures safety when generating IR.
     */
    extern std::unique_ptr<llvm::LLVMContext> LLVM_Context;

    /**
     * @par The module contains all of the information about a single unit of compiled code, so singular compiled program. Multiple modules can exist in a context.
     */
    extern std::unique_ptr<llvm::Module> LLVM_Module;

    /**
     * @par The IR Builder is called whenever we want to generate an instruction, such as stack allocation, or load and store instructions.
     */
    extern std::unique_ptr<llvm::IRBuilder<>> IR_Builder;

    /**
     * @par This stores the global entry point for control flow to be returned back to
     */
    extern llvm::BasicBlock* top_level_entry;

    /**
     * The printf function definition
     */
    extern llvm::FunctionCallee print_f_function;

    extern llvm::Type* get_llvm_type(type_enum::types current_type);

    extern llvm::Value* binary_local_helper_plus(llvm::Value* left, llvm::Value* right, bool is_global, type_enum::types type);
    extern llvm::Value* binary_local_helper_minus(llvm::Value* left, llvm::Value* right, bool is_global, type_enum::types type);     
    extern llvm::Value* binary_local_helper_mult(llvm::Value* left, llvm::Value* right, bool is_global, type_enum::types type);    
    extern llvm::Value* binary_local_helper_div(llvm::Value* left, llvm::Value* right, bool is_global, type_enum::types type);    

    extern std::string get_llvm_type_as_string(llvm::Type* type);    

    namespace graph_handlers {
        extern llvm::Value* graph_add_node_handler(type_enum::types obj_type, const std::string& item_name, std::vector<std::unique_ptr<ast::top_level_expr>>& args);
        extern llvm::Value* graph_contains_node_handler(type_enum::types obj_type, const std::string& item_name, std::vector<std::unique_ptr<ast::top_level_expr>>& args);
        extern llvm::Value* graph_remove_node_handler(type_enum::types obj_type, const std::string& item_name, std::vector<std::unique_ptr<ast::top_level_expr>>& args);
        extern llvm::Value* graph_size_handler(type_enum::types obj_type, const std::string& item_name, std::vector<std::unique_ptr<ast::top_level_expr>>& args);
    }
    namespace list_handlers {
        extern llvm::Value* list_at_handler(type_enum::types obj_type, const std::string& item_name, std::vector<std::unique_ptr<ast::top_level_expr>>& args);
        extern llvm::Value* list_add_handler(type_enum::types obj_type, const std::string& item_name, std::vector<std::unique_ptr<ast::top_level_expr>>& args);
        extern llvm::Value* list_remove_handler(type_enum::types obj_type, const std::string& item_name, std::vector<std::unique_ptr<ast::top_level_expr>>& args);
        extern llvm::Value* list_size_handler(type_enum::types obj_type, const std::string& item_name, std::vector<std::unique_ptr<ast::top_level_expr>>& args);
    }
}
namespace ast {
}

#endif