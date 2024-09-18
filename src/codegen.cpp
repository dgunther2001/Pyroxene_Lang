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
        std::vector<llvm::Constant*> ascii_values;

        for (int i = 0; i < held_value.size(); i++) {
            ascii_values.emplace_back(llvm::ConstantInt::get(codegen::IR_Builder->getInt8Ty(), held_value[i], true));
        }

        llvm::ArrayType* array = llvm::ArrayType::get(codegen::IR_Builder->getInt8Ty(), held_value.size());
        llvm::Value* ascii_array= llvm::ConstantArray::get(array, ascii_values);

        return ascii_array;
    }

    llvm::Value* ast::bool_expression::codegen() {
        return llvm::ConstantInt::get(codegen::IR_Builder->getInt1Ty(), held_value ? 1 : 0);
    }

    llvm::Value* ast::identifier_expr::codegen() {
        llvm::GlobalVariable* globalVar = codegen::LLVM_Module->getNamedGlobal(identifier_name);

        llvm::Type* returnType = globalVar->getValueType();

        llvm::FunctionType *funcType = llvm::FunctionType::get(returnType, false);
        llvm::Function *func = llvm::Function::Create(funcType, llvm::Function::ExternalLinkage, "assign_ident_global_val", *codegen::LLVM_Module);

        llvm::BasicBlock *entry = llvm::BasicBlock::Create(*codegen::LLVM_Context, "entry_pt", func);
        codegen::IR_Builder->SetInsertPoint(entry);

        llvm::Value* loadedValue = codegen::IR_Builder->CreateLoad(globalVar->getValueType(), globalVar, identifier_name);

        codegen::IR_Builder->CreateRet(loadedValue);

        return func;
    }

    llvm::Value* ast::binary_expr::codegen() {
        return nullptr;
    }

    llvm::Value* ast::variable_assignment::codegen() {
        llvm::GlobalVariable* globalVar = codegen::LLVM_Module->getNamedGlobal(identifier_name);

        llvm::Type* variable_type;
        switch (type) {
            case int_type:
                variable_type = llvm::Type::getInt64Ty(*codegen::LLVM_Context);
                break;
            case float_type:
                variable_type = llvm::Type::getDoubleTy(*codegen::LLVM_Context);
                break;
            case char_type:
                variable_type = llvm::Type::getInt8Ty(*codegen::LLVM_Context);
                break;
            case string_type:
                // TODO MAKE THIS WORK LATER!!!
                std::cerr << "Error: String type not implemented.\n";
                return nullptr;
            case bool_type:
                variable_type = llvm::Type::getInt1Ty(*codegen::LLVM_Context);
                break;
            default:
                return nullptr;
        }

        llvm::Value* expression_value = assigned_value->codegen();
        if (!expression_value) {
            std::cerr << "Error: Failed to generate the expression value.\n";
            return nullptr;
        }

        llvm::FunctionType *funcType = llvm::FunctionType::get(llvm::Type::getVoidTy(*codegen::LLVM_Context), false);
        llvm::Function *func = llvm::Function::Create(funcType, llvm::Function::ExternalLinkage, "reassign_global", *codegen::LLVM_Module);

        llvm::BasicBlock *entry = llvm::BasicBlock::Create(*codegen::LLVM_Context, "entry_pt", func);
        codegen::IR_Builder->SetInsertPoint(entry);

        codegen::IR_Builder->CreateStore(expression_value, globalVar);

        codegen::IR_Builder->CreateRetVoid();

        return nullptr;
    }

    llvm::Value* ast::variable_declaration::codegen() {
        ast::types current_type = type;
        llvm::Type* variable_type;

        switch (current_type) {
            case int_type:
                variable_type = llvm::Type::getInt64Ty(*codegen::LLVM_Context);
                break;
            case float_type:
                variable_type = llvm::Type::getDoubleTy(*codegen::LLVM_Context);
                break;
            case char_type:
                variable_type = llvm::Type::getInt8Ty(*codegen::LLVM_Context);
                break;
            case string_type:
                // TODO MAKE THIS WORK LATER!!!
                break;
            case bool_type:
                variable_type = llvm::Type::getInt1Ty(*codegen::LLVM_Context);
                break;
        }

        llvm::GlobalVariable* new_global = new llvm::GlobalVariable(
            *codegen::LLVM_Module,               // Module to which the global variable will be added
            variable_type,              // Type of the global variable
            false,                      // Whether the variable is constant
            llvm::GlobalValue::ExternalLinkage, // Linkage type
            nullptr,                // Initial value of the global variable
            identifier_name            // Name of the global variable
        );

        return new_global;
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