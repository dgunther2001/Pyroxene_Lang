/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/codegen/codegen.h"


namespace ast {
    //std::unique_ptr<llvm::LLVMContext> LLVM_Context;
    llvm::Value* ast::integer_expression::codegen() {
        return nullptr;
    }

    llvm::Value* ast::float_expression::codegen() {
        return nullptr;
    }

    llvm::Value* ast::char_expression::codegen() {
        return nullptr;
    }

    llvm::Value* ast::string_expression::codegen() {
        return nullptr;
    }

    llvm::Value* ast::bool_expression::codegen() {
        return nullptr;
    }

    llvm::Value* ast::identifier_expr::codegen() {
        return nullptr;
    }

    llvm::Value* ast::binary_expr::codegen() {
        return nullptr;
    }

    llvm::Value* ast::variable_assignment::codegen() {
        return nullptr;
    }

    llvm::Value* ast::variable_declaration::codegen() {
        return nullptr;
    }

    llvm::Value* ast::variable_definition::codegen() {
        return nullptr;
    }


}