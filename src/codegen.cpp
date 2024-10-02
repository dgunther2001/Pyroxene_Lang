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
    llvm::BasicBlock* top_level_entry;

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
     *  scope::llvm_var_info *var_alloca_type = scope::variable_lookup(identifier_name);

        if (!var_alloca_type)
        {
            utility::codegen_error("Variable '" + identifier_name + "' not found in current or outer scopes.", parser::current_line);
        }

        if (var_alloca_and_type->is_init == false) {
            utility::codegen_error("Variable '" + identifier_name + "' has not been initialized.", parser::current_line);
        }

        llvm::LoadInst* load = codegen::IR_Builder->CreateLoad(var_alloca_and_type->allocation->getType(), var_alloca_and_type->allocation, identifier_name);
        if ( var_alloca_and_type->allocation->getType()->isIntegerTy(64)) {
            load->setAlignment(llvm::Align(8));
        }

        return load; 
     * @endcode
     */
    llvm::Value* ast::identifier_expr::codegen() {
        scope::llvm_var_info* var_alloca_and_type = scope::variable_lookup(identifier_name);

        if (var_alloca_and_type == nullptr) {
            utility::codegen_error("Variable '" + identifier_name + "' not found in current or outer scopes.", parser::current_line);
        }

        if (var_alloca_and_type->is_init == false) {
            utility::codegen_error("Variable '" + identifier_name + "' has not been initialized.", parser::current_line);
        }

        llvm::LoadInst* load = codegen::IR_Builder->CreateLoad(var_alloca_and_type->type, var_alloca_and_type->allocation, identifier_name);
        if (var_alloca_and_type->type->isIntegerTy(64)) {
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

        var_alloca_and_type->is_init = true;

        llvm::Value* expression_value = assigned_value->codegen();

        llvm::StoreInst* store = codegen::IR_Builder->CreateStore(expression_value, codegen::symbol_table[identifier_name]);

        if (var_alloca_and_type->allocation->getType()->isIntegerTy(64)) {
            store->setAlignment(llvm::Align(8));
        }

        return store;
     * @endcode
     */
    llvm::Value* ast::variable_assignment::codegen() {
        scope::llvm_var_info* var_alloca_and_type = scope::variable_lookup(identifier_name);

        if (var_alloca_and_type->allocation == nullptr) {
            utility::codegen_error("Variable '" + identifier_name + "' not found in current or outer scopes.", parser::current_line);
        }

        var_alloca_and_type->is_init = true;

        llvm::Value* expression_value = assigned_value->codegen();

        llvm::StoreInst* store = codegen::IR_Builder->CreateStore(expression_value, var_alloca_and_type->allocation);


        if (var_alloca_and_type->allocation->getType()->isIntegerTy(64)) {
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

       @par Create the variable allocation with a nullptr value, and insert it into the current scope, then return the allocation.

       @code
        llvm::AllocaInst* variable_allocation = tempBuilder.CreateAlloca(variable_type, nullptr, identifier_name);
        
        if (scope::variable_exists_in_current_scope(identifier_name)) {
            utility::codegen_error("Variable '" + identifier_name + "' already declared in this scope", current_line);
        }
        
        scope::add_var_to_current_scope(identifier_name, variable_allocation, variable_type, false);

        return variable_allocation;    
       @endcode
     * 
     */
    llvm::Value* ast::variable_declaration::codegen() {
        llvm::Type* variable_type = codegen::get_llvm_type(type);

        llvm::Function* currentFunction = codegen::IR_Builder->GetInsertBlock()->getParent();

        llvm::IRBuilder<> tempBuilder(&currentFunction->getEntryBlock(), currentFunction->getEntryBlock().begin());
        llvm::AllocaInst* variable_allocation = tempBuilder.CreateAlloca(variable_type, nullptr, identifier_name);

        if (scope::variable_exists_in_current_scope(identifier_name)) {
            utility::codegen_error("Variable '" + identifier_name + "' already declared in this scope. Redeclaration", parser::current_line);
        }

        scope::add_var_to_current_scope(identifier_name, variable_allocation, variable_type, false);

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
     * 
     *  if (scope::variable_exists_in_current_scope(identifier_name)) {
            utility::codegen_error("Variable '" + identifier_name + "' already declared in this scope. Redeclaration", parser::current_line);
        }

        scope::add_var_to_current_scope(identifier_name, variable_allocation, variable_allocation->getAllocatedType()));
     * 
        llvm::StoreInst* store = codegen::IR_Builder->CreateStore(expression_value, variable_allocation, true);
        codegen::symbol_table.insert({identifier_name, variable_allocation});
        return variable_allocation;
     * @endcode
     */
    llvm::Value* ast::variable_definition::codegen() {
        llvm::Value* expression_value = assigned_value->codegen();

        llvm::Function* currentFunction = codegen::IR_Builder->GetInsertBlock()->getParent();

        llvm::IRBuilder<> tempBuilder(&currentFunction->getEntryBlock(), currentFunction->getEntryBlock().begin());
        llvm::AllocaInst* variable_allocation = tempBuilder.CreateAlloca(expression_value->getType(), nullptr, identifier_name);

        if (scope::variable_exists_in_current_scope(identifier_name)) {
            utility::codegen_error("Variable '" + identifier_name + "' already declared in this scope. Redeclaration", parser::current_line);
        }

        scope::add_var_to_current_scope(identifier_name, variable_allocation, variable_allocation->getAllocatedType(), true);

        llvm::StoreInst* store = codegen::IR_Builder->CreateStore(expression_value, variable_allocation);

        if (variable_allocation->getAllocatedType()->isIntegerTy(64)) {
            store->setAlignment(llvm::Align(8));
        }

        return variable_allocation;
    }

    /**
     * @fn ast::return_expr::codegen()
     * @par Generates IR for the expression attached to the return statement, and creates a return IR instruction.
     * @code
     *  llvm::Value* return_value = returned_value->codegen();
        codegen::IR_Builder->CreateRet(return_value);
        return return_value;
     * @endcode
     */
    llvm::Value* ast::return_expr::codegen() { 
        llvm::Value* return_value = returned_value->codegen();
        codegen::IR_Builder->CreateRet(return_value);
        return return_value;
    }

    /**
     * @fn ast::func_defn::codegen()
     * @details Functionally, takes all of the relevant parameters in the func_defn ast node, and converts them to IR.
     * 
     * @par Grab the return type, as well as the types of all of the paramters.
     * @code
     * scope::create_scope();
     * llvm::Type* func_return_type = codegen::get_llvm_type(return_type);

        std::vector<llvm::Type*> parameter_types;
        for (auto const& parameter : parameters) {
            parameter_types.emplace_back(codegen::get_llvm_type(parameter->get_expr_type()));
        }
     * @endcode

       @par Generate an llvm::FunctionType* which holds the function return type and parameter types. 
       @code
        llvm::FunctionType* func_type = llvm::FunctionType::get(func_return_type, parameter_types, false);
       @endcode

       @par Create the function declaration in the current module. 
       @code
        llvm::Function* function_decl = llvm::Function::Create(func_type, llvm::Function::ExternalLinkage, func_name, *codegen::LLVM_Module);
       @endcode

       @par Create a new basic block for the function, which is essentially just a control flow boundary for the function, and set the IR_Builder insertion point to it.
       @code
        llvm::BasicBlock* function_block = llvm::BasicBlock::Create(*codegen::LLVM_Context, "entry_pt_" + func_name, function_decl);
        codegen::IR_Builder->SetInsertPoint(function_block);
       @endcode

       @par We iterate over the parameters array in the AST Node, and set the name of the argument in the llvm::Function* to the values stored in the parameters vector.
       @code
        for (int i = 0; i < parameters.size(); i++) {
            llvm::Argument* argument = function_decl->getArg(i); 
            argument->setName(parameters.at(i)->get_name());
            scope::add_var_to_current_scope(argument->getName().str(), argument, argument->getType());
        }
       @endcode
       @par Then iterate over the array of expressions, and generate IR in the new control block. If it is a return type, we validate that the expression type matches, and break out of the loop to avoid parsing unreachable code.
       @code

        for (auto const& expression : expressions) {
            llvm::Value* current_expr = expression->codegen();

            if (expression->get_ast_class() == "return") {
                if (func_return_type->isVoidTy()) {
                    // ADD ERROR HANDLING HERE
                } else if(func_return_type != codegen::get_llvm_type(expression->get_expr_type())) {
                    utility::codegen_error("Invalid return type", parser::current_line);
                }
                break;
            }
        }
       @endcode

       @par Check whether the current control flow block has a terminator (return and branch), and if not, generate one with the default value of return type.
       @code
        if (!function_block->getTerminator()) {
            if (func_return_type->isVoidTy()) {
                codegen::IR_Builder->CreateRetVoid(); 
            } else {
                llvm::Value* default_return_value = llvm::Constant::getNullValue(func_return_type);
                codegen::IR_Builder->CreateRet(default_return_value); 
                
            }
        }
       @endcode

       @par Reset the IR insertion point back to the global insertion point and return control back to the global block. Then return the llvm::Function*.
       @code
        codegen::IR_Builder->SetInsertPoint(codegen::top_level_entry);
        scope::exit_scope();
        return function_decl;
       @endcode
     */
    llvm::Value* ast::func_defn::codegen() {
        scope::create_scope();
        llvm::Type* func_return_type = codegen::get_llvm_type(return_type);
        std::vector<llvm::Type*> parameter_types;
        for (auto const& parameter : parameters) {
            parameter_types.emplace_back(codegen::get_llvm_type(parameter->get_expr_type()));
        }

        llvm::FunctionType* func_type = llvm::FunctionType::get(func_return_type, parameter_types, false); // specifies return type and parameter types for the function

        llvm::Function* function_decl = llvm::Function::Create(func_type, llvm::Function::ExternalLinkage, func_name, *codegen::LLVM_Module); // creates the function based on all of the above parameters, and set it to the module

        llvm::BasicBlock* function_block = llvm::BasicBlock::Create(*codegen::LLVM_Context, "entry_pt_" + func_name, function_decl);
        codegen::IR_Builder->SetInsertPoint(function_block);

    
        for (int i = 0; i < parameters.size(); i++) {
            llvm::Argument* argument = function_decl->getArg(i); 
            argument->setName(parameters.at(i)->get_name());
            scope::add_var_to_current_scope(argument->getName().str(), argument, argument->getType());
        }

        for (auto const& expression : expressions) {
            llvm::Value* current_expr = expression->codegen();

            if (expression->get_ast_class() == "return") {
                if (func_return_type->isVoidTy()) {
                    // ADD ERROR HANDLING HERE
                } else if(func_return_type != current_expr->getType()) {
                    utility::codegen_error("Invalid return type", parser::current_line);
                }
                break;
            }
            
            
        }

    // TODO: add error message here instead
        if (!function_block->getTerminator()) {
            if (func_return_type->isVoidTy()) {
                codegen::IR_Builder->CreateRetVoid(); 
            } else {
                llvm::Value* default_return_value = llvm::Constant::getNullValue(func_return_type);
                codegen::IR_Builder->CreateRet(default_return_value); 
                
            }
        }

        codegen::IR_Builder->SetInsertPoint(codegen::top_level_entry);

        scope::exit_scope();
        return function_decl;
    }

    llvm::Value* ast::if_expr::codegen() {
        return nullptr;
    }

    llvm::Value* ast::else_expr::codegen() {
        return nullptr;
    }

    llvm::Value* ast::func_call_expr::codegen() {
        return nullptr;
    }


}