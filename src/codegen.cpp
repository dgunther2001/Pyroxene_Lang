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

    std::map<std::string, llvm::AllocaInst*> symbol_table;
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
        llvm::AllocaInst* variable_allocation = codegen::symbol_table[identifier_name];
        llvm::LoadInst* load = codegen::IR_Builder->CreateLoad(variable_allocation->getAllocatedType(), variable_allocation, identifier_name);

        if (variable_allocation->getAllocatedType()->isIntegerTy(64)) {
            load->setAlignment(llvm::Align(8));
        }

        return load;

    }

    llvm::Value* ast::binary_expr::codegen() {
        return nullptr;
    }

    llvm::Value* ast::variable_assignment::codegen() {
        llvm::Value* expression_value = assigned_value->codegen();

        llvm::Function* currentFunction = codegen::IR_Builder->GetInsertBlock()->getParent();

        if (codegen::symbol_table.find(identifier_name) == codegen::symbol_table.end()) {
            std::cout << "Identifier not found(" << identifier_name << ").\n"; // do proper error handling later
            return nullptr;
        }

        llvm::IRBuilder<> tempBuilder(&currentFunction->getEntryBlock(), currentFunction->getEntryBlock().begin());

        llvm::StoreInst* store = codegen::IR_Builder->CreateStore(expression_value, codegen::symbol_table[identifier_name]);

        if (codegen::symbol_table[identifier_name]->getAllocatedType()->isIntegerTy(64)) {
            store->setAlignment(llvm::Align(8));
        }

        return store;
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

        llvm::Function* currentFunction = codegen::IR_Builder->GetInsertBlock()->getParent();

        llvm::IRBuilder<> tempBuilder(&currentFunction->getEntryBlock(), currentFunction->getEntryBlock().begin());
        llvm::AllocaInst* variable_allocation = tempBuilder.CreateAlloca(variable_type, nullptr, identifier_name);

        codegen::symbol_table.insert({identifier_name, variable_allocation});

        return variable_allocation;    
    }

    llvm::Value* ast::variable_definition::codegen() {
        llvm::Value* expression_value = assigned_value->codegen();

        llvm::Function* currentFunction = codegen::IR_Builder->GetInsertBlock()->getParent();

        llvm::IRBuilder<> tempBuilder(&currentFunction->getEntryBlock(), currentFunction->getEntryBlock().begin());
        llvm::AllocaInst* variable_allocation = tempBuilder.CreateAlloca(expression_value->getType(), nullptr, identifier_name);

        llvm::StoreInst* store = codegen::IR_Builder->CreateStore(expression_value, variable_allocation);

        if (variable_allocation->getAllocatedType()->isIntegerTy(64)) {
            store->setAlignment(llvm::Align(8));
        }

        codegen::symbol_table.insert({identifier_name, variable_allocation});

        return variable_allocation;
    }




}