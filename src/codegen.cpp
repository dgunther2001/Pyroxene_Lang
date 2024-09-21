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

    /**
     * @par Helper function to return an llvm::Type* based on the type stored in the AST.
     * 
     * @code
     *  switch (current_type) {
            case int_type:
                return llvm::Type::getInt64Ty(*codegen::LLVM_Context);
            case float_type:
                return llvm::Type::getDoubleTy(*codegen::LLVM_Context);
            case char_type:
                return llvm::Type::getInt8Ty(*codegen::LLVM_Context);
            case bool_type:
                return llvm::Type::getInt1Ty(*codegen::LLVM_Context);
            case string_type:
                // TODO Handle string type 
            default:
                return nullptr; 
        }
     * @endcode
     */
    llvm::Type* get_llvm_type(ast::types current_type) {
        switch (current_type) {
            case ast::int_type:
                return llvm::Type::getInt64Ty(*codegen::LLVM_Context);
            case ast::float_type:
                return llvm::Type::getDoubleTy(*codegen::LLVM_Context);
            case ast::char_type:
                return llvm::Type::getInt8Ty(*codegen::LLVM_Context);
            case ast::string_type:
                // TODO Handle string type
            case ast::bool_type:
                return llvm::Type::getInt1Ty(*codegen::LLVM_Context); 
            default:
                return nullptr; 
        }
    }
}

namespace ast {
    /**
     * @fn ast::integer_expression::codegen()
     * @par Generates IR for primary integer expressions.
     * 
     * @code
     *  return llvm::ConstantInt::get(codegen::IR_Builder->getInt64Ty(), held_value, true);
     * @endcode
     */
    llvm::Value* ast::integer_expression::codegen() {
        return llvm::ConstantInt::get(codegen::IR_Builder->getInt64Ty(), held_value, true);
    }

    /**
     * @fn ast::float_expression::codegen()
     * @par Generates IR for primary float expressions.
     * 
     * @code
     *  return llvm::ConstantFP::get(codegen::IR_Builder->getDoubleTy(), held_value);
     * @endcode
     */
    llvm::Value* ast::float_expression::codegen() {
        return llvm::ConstantFP::get(codegen::IR_Builder->getDoubleTy(), held_value);
    }

    /**
     * @fn ast::char_expression::codegen()
     * @par Generates IR for primary character expressions.
     * 
     * @code
     *  return llvm::ConstantInt::get(codegen::IR_Builder->getInt8Ty(), held_value, true);
     * @endcode
     */
    llvm::Value* ast::char_expression::codegen() {
        return llvm::ConstantInt::get(codegen::IR_Builder->getInt8Ty(), held_value, true);
    }

    /**
     * @fn ast::string_expression::codegen()
     * @par Generates IR for primary string expressions.
     * 
     * @par Instantiate a vector of LLVM Constants. Iterate over the string, and pass each character in an ascii conversion into the Constant* vector.
     * @code
     *  std::vector<llvm::Constant*> ascii_values;

        for (int i = 0; i < held_value.size(); i++) {
            ascii_values.emplace_back(llvm::ConstantInt::get(codegen::IR_Builder->getInt8Ty(), held_value[i], true));
        }
     * @endcode

       @par Declare an array with the length of the string in question. Then place the values from the vector of constants into an llvm array, and return the array.

       @code
        llvm::ArrayType* array = llvm::ArrayType::get(codegen::IR_Builder->getInt8Ty(), held_value.size());
        llvm::Value* ascii_array= llvm::ConstantArray::get(array, ascii_values);

        return ascii_array;
       @endcode
     */
    llvm::Value* ast::string_expression::codegen() {
        std::vector<llvm::Constant*> ascii_values;

        for (int i = 0; i < held_value.size(); i++) {
            ascii_values.emplace_back(llvm::ConstantInt::get(codegen::IR_Builder->getInt8Ty(), held_value[i], true));
        }

        llvm::ArrayType* array = llvm::ArrayType::get(codegen::IR_Builder->getInt8Ty(), held_value.size());
        llvm::Value* ascii_array= llvm::ConstantArray::get(array, ascii_values);

        return ascii_array;
    }

    /**
     * @fn ast::bool_expression::codegen()
     * @par Generates IR for primary boolean expressions.
     * 
     * @code
     *  return llvm::ConstantInt::get(codegen::IR_Builder->getInt1Ty(), held_value ? 1 : 0);
     * @endcode
     */
    llvm::Value* ast::bool_expression::codegen() {
        return llvm::ConstantInt::get(codegen::IR_Builder->getInt1Ty(), held_value ? 1 : 0);
    }

    /**
     * @fn ast::identifier_expr::codegen()
     * @par Generates IR for primary identifier expressions. Grabs the actualy pointer to the allocation, and creates a load instruction based on the pointer to the stack allocation.
     * 
     * @code
     *  llvm::AllocaInst* variable_allocation = codegen::symbol_table[identifier_name];
        llvm::LoadInst* load = codegen::IR_Builder->CreateLoad(variable_allocation->getAllocatedType(), variable_allocation, identifier_name);
        return load;
     * @endcode
     */
    llvm::Value* ast::identifier_expr::codegen() {
        llvm::AllocaInst* variable_allocation = codegen::symbol_table[identifier_name];
        llvm::LoadInst* load = codegen::IR_Builder->CreateLoad(variable_allocation->getAllocatedType(), variable_allocation, identifier_name);

        if (variable_allocation->getAllocatedType()->isIntegerTy(64)) {
            load->setAlignment(llvm::Align(8));
        }

        return load;

    }

    /**
     * @fn ast::binary_expr::codegen()
     * @par Generates IR for binary expressions. As primary expressions are allocated during recursive calls of the codegen function, we just need to deal with the operator.
     * 
     * @par Recursively generate IR for the left and right subtree.
     * 
     * @code
     *  llvm::Value* left_value = left->codegen();
        llvm::Value* right_value = right->codegen();
     * @endcode

       @par Create an LLVM instruction corresponding to the binary operator.

       @code
        switch (op) {
            case lexer::tok_plus:  
                return codegen::IR_Builder->CreateAdd(left_value, right_value, "addtmp");
            case lexer::tok_minus:  
                return codegen::IR_Builder->CreateSub(left_value, right_value, "subtmp");
            case lexer::tok_mult:  
                return codegen::IR_Builder->CreateMul(left_value, right_value, "multmp");
            case lexer::tok_div:  
                return codegen::IR_Builder->CreateSDiv(left_value, right_value, "divtmp"); 
            default:
                return nullptr;
        }
       @endcode
     */
    llvm::Value* ast::binary_expr::codegen() {
        llvm::Value* left_value = left->codegen();
        llvm::Value* right_value = right->codegen();

        llvm::Function* currentFunction = codegen::IR_Builder->GetInsertBlock()->getParent();

        switch (op) {
        case lexer::tok_plus:  
            return codegen::IR_Builder->CreateAdd(left_value, right_value, "addtmp");
        case lexer::tok_minus:  
            return codegen::IR_Builder->CreateSub(left_value, right_value, "subtmp");
        case lexer::tok_mult:  
            return codegen::IR_Builder->CreateMul(left_value, right_value, "multmp");
        case lexer::tok_div:  
            return codegen::IR_Builder->CreateSDiv(left_value, right_value, "divtmp"); 
            /*
        case '%':  
            return codegen::IR_Builder->CreateSRem(left_value, right_value, "modtmp"); 
            */
        default:
            return nullptr;
        }

    }

    /**
     * @fn ast::variable_assignment::codegen()
     * @par Generates IR for reassignment of variables.
     * 
     * @par Validate that what we are reassigning even exists in the symbol table, then generate IR for the new value, and create a store instruction.
     * 
     * @code
     * 
        if (codegen::symbol_table.find(identifier_name) == codegen::symbol_table.end()) {
            std::cout << "Identifier not found(" << identifier_name << ").\n"; // do proper error handling later
            return nullptr;
        }

        llvm::Value* expression_value = assigned_value->codegen();

        llvm::StoreInst* store = codegen::IR_Builder->CreateStore(expression_value, codegen::symbol_table[identifier_name]);

        return store;
     * @endcode
     */
    llvm::Value* ast::variable_assignment::codegen() {

        if (codegen::symbol_table.find(identifier_name) == codegen::symbol_table.end()) {
            std::cout << "Identifier not found(" << identifier_name << ").\n"; // do proper error handling later
            return nullptr;
        }

        llvm::Value* expression_value = assigned_value->codegen();

        llvm::StoreInst* store = codegen::IR_Builder->CreateStore(expression_value, codegen::symbol_table[identifier_name]);

        if (codegen::symbol_table[identifier_name]->getAllocatedType()->isIntegerTy(64)) {
            store->setAlignment(llvm::Align(8));
        }

        return store;
    }

    /**
     * @fn ast::variable_declaration::codegen()
     * @par Allows us to declare variables into the symbol table and onto the stack without defining them.
     * 
     * @par Convert the AST tyope to an LLVM type, and create a temporary IR builder that places the current entry point at the start of the current function block.
     * 
     * @code
     *  llvm::Type* variable_type = codegen::get_llvm_type(type);
        llvm::Function* currentFunction = codegen::IR_Builder->GetInsertBlock()->getParent();
        llvm::IRBuilder<> tempBuilder(&currentFunction->getEntryBlock(), currentFunction->getEntryBlock().begin());
     * @endcode

       @par Create the variable allocation with a nullptr value, and insert it into the symbol table, then return the allocation.

       @code
        llvm::AllocaInst* variable_allocation = tempBuilder.CreateAlloca(variable_type, nullptr, identifier_name);
        codegen::symbol_table.insert({identifier_name, variable_allocation});
        return variable_allocation;    
       @endcode
     * 
     */
    llvm::Value* ast::variable_declaration::codegen() {
        llvm::Type* variable_type = codegen::get_llvm_type(type);

        llvm::Function* currentFunction = codegen::IR_Builder->GetInsertBlock()->getParent();

        llvm::IRBuilder<> tempBuilder(&currentFunction->getEntryBlock(), currentFunction->getEntryBlock().begin());
        llvm::AllocaInst* variable_allocation = tempBuilder.CreateAlloca(variable_type, nullptr, identifier_name);

        codegen::symbol_table.insert({identifier_name, variable_allocation});

        return variable_allocation;    
    }

    /**
     * @fn ast::variable_definition::codegen()
     * @par Generates IR for variable definitions, where we declare a variable, and assign it a value.
     * 
     * @par First, we generate IR for the expression assigned, and then set the insertion point to the top of the current block to insert allocation instruction.
     * 
     * @code
     *  llvm::Value* expression_value = assigned_value->codegen();
        llvm::Function* currentFunction = codegen::IR_Builder->GetInsertBlock()->getParent();
        llvm::IRBuilder<> tempBuilder(&currentFunction->getEntryBlock(), currentFunction->getEntryBlock().begin());
     * @endcode
     * 
     * @par Allocate the variable on the stack, and then create a store instruction that places the assigned value into the variable allocation. Then add it to the symbol table.
     * 
     * @code
     *  llvm::AllocaInst* variable_allocation = tempBuilder.CreateAlloca(expression_value->getType(), nullptr, identifier_name);
        llvm::StoreInst* store = codegen::IR_Builder->CreateStore(expression_value, variable_allocation);
        codegen::symbol_table.insert({identifier_name, variable_allocation});
        return variable_allocation;
     * @endcode
     */
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