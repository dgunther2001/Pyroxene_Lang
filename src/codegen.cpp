/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/codegen/codegen.h"

#include <iostream>

namespace codegen {
    std::unique_ptr<llvm::LLVMContext> LLVM_Context;
    std::unique_ptr<llvm::Module> LLVM_Module;
    std::unique_ptr<llvm::IRBuilder<>> IR_Builder;
}

namespace ast {

    llvm::Value* ast::integer_expression::codegen() {
        return llvm::ConstantInt::get(codegen::IR_Builder->getInt64Ty(), held_value, true);
    }

    llvm::Value* ast::float_expression::codegen() {
        return llvm::ConstantFP::get(codegen::IR_Builder->getDoubleTy(), held_value);
    }

    llvm::Value* ast::char_expression::codegen() {
        return llvm::ConstantInt::get(codegen::IR_Builder->getInt8Ty(), held_value, true);
    }

    llvm::Value* ast::string_expression::codegen() {
        return nullptr;
    }

    llvm::Value* ast::bool_expression::codegen() {
        return llvm::ConstantInt::get(codegen::IR_Builder->getInt1Ty(), held_value ? 1 : 0);
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
        llvm::Value* expression_value = assigned_value->codegen();
        llvm::Constant* constant_value = llvm::dyn_cast<llvm::Constant>(expression_value);

        llvm::Type* variable_type = constant_value->getType();

    llvm::GlobalVariable* new_global = new llvm::GlobalVariable(
        *codegen::LLVM_Module,               // Module to which the global variable will be added
        variable_type,              // Type of the global variable
        false,                      // Whether the variable is constant
        llvm::GlobalValue::ExternalLinkage, // Linkage type
        constant_value,                // Initial value of the global variable
        identifier_name            // Name of the global variable
    );

        return new_global;
    }




}