/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/type_checker/type_checker.h"
#include "../include/utility/utility.h"

namespace ast {

    /**
     * @fn ast::binary_expr::semantic_analysis()
     * @par Recurse the tree setting types as necessary, and performing semantic analysis on sub-expression, then set the type of the binary expression.
     * @code
     *  if (left->get_ast_class() != "int" && left->get_ast_class() != "float" && left->get_ast_class() != "char" && left->get_ast_class() != "string" && left->get_ast_class() != "bool") {
            left->semantic_analysis();
        }

        if (right->get_ast_class() != "int" && right->get_ast_class() != "float" && right->get_ast_class() != "char" && right->get_ast_class() != "string" && right->get_ast_class() != "bool") {
            right->semantic_analysis();
        }

        type_enum::types left_type = left->get_expr_type();
        type_enum::types right_type = right->get_expr_type();

        if (left_type != right_type) {
            utility::sem_analysis_error("Invalid types connected in binary expression", parser::current_line);
        }

        set_expr_type(left->get_expr_type());
     * @endcode
     */
    void ast::binary_expr::semantic_analysis() {
        if (left->get_ast_class() != "int" && left->get_ast_class() != "float" && left->get_ast_class() != "char" && left->get_ast_class() != "string" && left->get_ast_class() != "bool") {
            left->semantic_analysis();
        }

        if (right->get_ast_class() != "int" && right->get_ast_class() != "float" && right->get_ast_class() != "char" && right->get_ast_class() != "string" && right->get_ast_class() != "bool") {
            right->semantic_analysis();
        }

        type_enum::types left_type = left->get_expr_type();
        //std::cout << ast::get_type_as_string(left_type) << " " << left->get_ast_class() << "\n";
        type_enum::types right_type = right->get_expr_type();
        //std::cout << ast::get_type_as_string(right_type) << " " << right->get_ast_class() << "\n";

        if (left_type != right_type) {
            utility::sem_analysis_error("Invalid types connected in binary expression", parser::current_line);
        }

        set_expr_type(left->get_expr_type());
    }

    /**
     * @fn ast::identifier_expr::semantic_analysis()
     * @par Grabs the identifier type from the semantic analysis scope stack, and stores the correct value in the AST 
     * 
     * @code
     *  if (sem_analysis_scope::get_scope_stack_size() == 1) {
            utility::sem_analysis_error("Cannot assign identifier value to global variables", parser::current_line);
        }
     *  if (sem_analysis_scope::var_initialized(identifier_name) == false) {
            utility::sem_analysis_error("Value attempting to access not initialized", parser::current_line);
        }
        set_expr_type(sem_analysis_scope::get_var_type(identifier_name));
        if (sem_analysis_scope::get_var_scope_level(identifier_name) == 0) {
            set_is_global(true);
        } else {
            set_is_global(false);
        }
     * @endcode
     */
    void ast::identifier_expr::semantic_analysis() {
        if (sem_analysis_scope::get_scope_stack_size() == 1) {
            utility::sem_analysis_error("Cannot assign identifier value to global variables", parser::current_line);
        }

        if (sem_analysis_scope::var_initialized(identifier_name) == false) {
            utility::sem_analysis_error("Value attempting to access not initialized", parser::current_line);
        }
        set_expr_type(sem_analysis_scope::get_var_type(identifier_name));
        if (sem_analysis_scope::get_var_scope_level(identifier_name) == 0) {
            set_is_global(true);
        } else {
            set_is_global(false);
        }


    }

    /**
     * @fn ast::variable_declaration::semantic_analysis()
     * @par Adds the variable declaration to the semantic analysis stack with an init value of false
     * 
     * @code
     *  if (sem_analysis_scope::variable_exists_in_current_scope(identifier_name)) {
            utility::sem_analysis_error("Variable already declared or defined in the current scope", parser::current_line);
        }
        sem_analysis_scope::add_var_to_current_scope(identifier_name, type, false);
        if (sem_analysis_scope::get_scope_stack_size() == 1) {
            set_is_global(true);
        } else {
            set_is_global(false);
        }
     * @endcode
     */
    void ast::variable_declaration::semantic_analysis() {
        if (sem_analysis_scope::variable_exists_in_current_scope(identifier_name)) {
            utility::sem_analysis_error("Variable already declared or defined in the current scope", parser::current_line);
        }
        sem_analysis_scope::add_var_to_current_scope(identifier_name, type, false);
        if (sem_analysis_scope::get_scope_stack_size() == 1) {
            set_is_global(true);
        } else {
            set_is_global(false);
        }
    }

    /**
     * @fn ast::variable_definition::semantic_analysis()
     * @par Validate that the declared type and the type of the expression match. Also validate that the variable does not yet exist in the current scope.
     * @code
     *  if (sem_analysis_scope::variable_exists_in_current_scope(identifier_name)) {
            utility::sem_analysis_error("Variable already declared or defined in the current scope", parser::current_line);
        }

        if (assigned_value->get_ast_class() != "int" && assigned_value->get_ast_class() != "float" && assigned_value->get_ast_class() != "char" && assigned_value->get_ast_class() != "string" && assigned_value->get_ast_class() != "bool") {
            assigned_value->semantic_analysis();
        }

        if (assigned_value->get_expr_type() != type) {
            utility::sem_analysis_error("Invalid value provided to variable definition", parser::current_line);
        }   

        sem_analysis_scope::add_var_to_current_scope(identifier_name, type, true);
        if (sem_analysis_scope::get_scope_stack_size() == 1) {
            set_is_global(true);
        } else {
            set_is_global(false);
        }
     * @endcode
     */
    void ast::variable_definition::semantic_analysis() {
        if (sem_analysis_scope::variable_exists_in_current_scope(identifier_name)) {
            utility::sem_analysis_error("Variable already declared or defined in the current scope", parser::current_line);
        }

        if (assigned_value->get_ast_class() != "int" && assigned_value->get_ast_class() != "float" && assigned_value->get_ast_class() != "char" && assigned_value->get_ast_class() != "string" && assigned_value->get_ast_class() != "bool") {
            assigned_value->semantic_analysis();
        }

        if (assigned_value->get_expr_type() != type) {
            utility::sem_analysis_error("Invalid value provided to variable definition", parser::current_line);
        }   

        sem_analysis_scope::add_var_to_current_scope(identifier_name, type, true);
        if (sem_analysis_scope::get_scope_stack_size() == 1) {
            set_is_global(true);
        } else {
            set_is_global(false);
        }
    }

    /**
     * @fn ast::variable_assignment::semantic_analysis()
     * @par Validate that the type of variable being reassigned matches the type of the expression. Also validate that the variable exists in the scope stack.
     * @code
     *  if (sem_analysis_scope::var_exists(identifier_name) == false) {
            utility::sem_analysis_error("Variable being assigned does not exist in the current scope", parser::current_line);
        }

        if (assigned_value->get_ast_class() != "int" && assigned_value->get_ast_class() != "float" && assigned_value->get_ast_class() != "char" && assigned_value->get_ast_class() != "string" && assigned_value->get_ast_class() != "bool") {
            assigned_value->semantic_analysis();
        }

        if (assigned_value->get_expr_type() != sem_analysis_scope::get_var_type(identifier_name)) {
            utility::sem_analysis_error("Assigned value does not match the type of the identifier", parser::current_line);
        }

        sem_analysis_scope::set_var_init(identifier_name);
        if (sem_analysis_scope::get_var_scope_level(identifier_name) == 0) {
            set_is_global(true);
        } else {
            set_is_global(false);
        }
     * @endcode
     */
    void ast::variable_assignment::semantic_analysis() {
        if (sem_analysis_scope::var_exists(identifier_name) == false) {
            utility::sem_analysis_error("Variable being assigned does not exist in the current scope", parser::current_line);
        }

        if (assigned_value->get_ast_class() != "int" && assigned_value->get_ast_class() != "float" && assigned_value->get_ast_class() != "char" && assigned_value->get_ast_class() != "string" && assigned_value->get_ast_class() != "bool") {
            assigned_value->semantic_analysis();
        }

        if (assigned_value->get_expr_type() != sem_analysis_scope::get_var_type(identifier_name)) {
            utility::sem_analysis_error("Assigned value does not match the type of the identifier", parser::current_line);
        }

        sem_analysis_scope::set_var_init(identifier_name);
        if (sem_analysis_scope::get_var_scope_level(identifier_name) == 0) {
            set_is_global(true);
        } else {
            set_is_global(false);
        }
    }

    /**
     * TODO: docs
     */
    void ast::if_expr::semantic_analysis() {

    }

    /**
     * @fn ast::return_expr::semantic_analysis()
     * @par Sets the type of the expression and recursively semantically analyzes the attached expression.
     * @code
     *  if (returned_value->get_ast_class() != "int" && returned_value->get_ast_class() != "float" && returned_value->get_ast_class() != "char" && returned_value->get_ast_class() != "string" && returned_value->get_ast_class() != "bool") {
            returned_value->semantic_analysis();
        }

        set_expr_type(returned_value->get_expr_type());
     * @endcode
     */
    void ast::return_expr::semantic_analysis() {
        if (returned_value->get_ast_class() != "int" && returned_value->get_ast_class() != "float" && returned_value->get_ast_class() != "char" && returned_value->get_ast_class() != "string" && returned_value->get_ast_class() != "bool") {
            returned_value->semantic_analysis();
        }

        set_expr_type(returned_value->get_expr_type());
    }

    /**
     * @fn ast::func_defn::semantic_analysis()
     * @par Creates a new level of scope and then recursively analyzes the contained expressions. Also validate the type of all return expressions.
     * 
     * @code
     *  if (sem_analysis_scope::global_contains_func_defn(func_name)) {
            utility::sem_analysis_error("Function already defined", parser::current_line);
        }

        sem_analysis_scope::add_function_defn(func_name, return_type);

        sem_analysis_scope::create_scope();

        std::vector<type_enum::types> arg_types;
        for (auto const& paramter : parameters) {
            if (sem_analysis_scope::variable_exists_in_current_scope(paramter->get_name())) {
                utility::sem_analysis_error("Parameter already exists in current scope", parser::current_line);
            }
            arg_types.emplace_back(paramter->get_expr_type());
            sem_analysis_scope::add_var_to_current_scope(paramter->get_name(), paramter->get_expr_type(), true);
        }

        sem_analysis_scope::add_function_defn(func_name, return_type, arg_types);

        for (auto const& ast_node : expressions) {
            if (ast_node->get_ast_class() == "return") {
                ast_node->semantic_analysis();
                if (ast_node->get_expr_type() != return_type) {
                    utility::sem_analysis_error("Return type does not match type of the function", parser::current_line);
                }
            } else if (ast_node->get_ast_class() != "int" && ast_node->get_ast_class() != "float" && ast_node->get_ast_class() != "char" && ast_node->get_ast_class() != "string" && ast_node->get_ast_class() != "bool") {
                ast_node->semantic_analysis();
            }
        }
        sem_analysis_scope::exit_scope();
     * @endcode
     */
    void ast::func_defn::semantic_analysis() {
        if (sem_analysis_scope::global_contains_func_defn(func_name)) {
            utility::sem_analysis_error("Function already defined", parser::current_line);
        }

        sem_analysis_scope::create_scope();

        std::vector<type_enum::types> arg_types;
        for (auto const& paramter : parameters) {
            if (sem_analysis_scope::variable_exists_in_current_scope(paramter->get_name())) {
                utility::sem_analysis_error("Parameter already exists in current scope", parser::current_line);
            }
            arg_types.emplace_back(paramter->get_expr_type());
            sem_analysis_scope::add_var_to_current_scope(paramter->get_name(), paramter->get_expr_type(), true);
        }

        sem_analysis_scope::add_function_defn(func_name, return_type, arg_types);


        for (auto const& ast_node : expressions) {
            if (ast_node->get_ast_class() == "return") {
                ast_node->semantic_analysis();
                if (ast_node->get_expr_type() != return_type) {
                    utility::sem_analysis_error("Return type does not match type of the function", parser::current_line);
                }
            } else if (ast_node->get_ast_class() != "int" && ast_node->get_ast_class() != "float" && ast_node->get_ast_class() != "char" && ast_node->get_ast_class() != "string" && ast_node->get_ast_class() != "bool") {
                ast_node->semantic_analysis();
            }
        }
        sem_analysis_scope::exit_scope();
    }

    /**
     * @fn ast::func_call_expr::semantic_analysis()
     * @par Validate the the function exists in the global symbol table, and that the number of arguments and argument types match what is expected.
     * @code
        if (!sem_analysis_scope::global_contains_func_defn(func_name)) {
            utility::sem_analysis_error("Function not found in the global symbol table", parser::current_line);
        }

        set_expr_type(sem_analysis_scope::get_func_ret_type(func_name)); // set the type of the expression correctly
        //std::cout << ast::get_type_as_string(get_expr_type()) << "\n";


        if (arguments.size() != sem_analysis_scope::get_num_params(func_name)) {
            utility::sem_analysis_error("Number of arguments in function call do not match number of arguments in function definition", parser::current_line);
        }

        int current_param = 1;

        for (auto const& argument : arguments) {
            if (argument->get_ast_class() != "int" && 
                argument->get_ast_class() != "float" && 
                argument->get_ast_class() != "char" && 
                argument->get_ast_class() != "string" && 
                argument->get_ast_class() != "bool") 
            {
                argument->semantic_analysis();
            }

            if(argument->get_expr_type() != sem_analysis_scope::get_param_type(func_name, current_param)) {
                utility::sem_analysis_error("Argument in function call does not match exprected parameter type", parser::current_line);
            }

            current_param++;
        }
     * @endcode
     */
    void ast::func_call_expr::semantic_analysis() {
        if (sem_analysis_scope::get_scope_stack_size() == 1) {
            utility::sem_analysis_error("Cannot assign globals with function calls", parser::current_line);
        }
        if (!sem_analysis_scope::global_contains_func_defn(func_name)) {
            utility::sem_analysis_error("Function not found in the global symbol table", parser::current_line);
        }

        set_expr_type(sem_analysis_scope::get_func_ret_type(func_name)); // set the type of the expression correctly
        //std::cout << ast::get_type_as_string(get_expr_type()) << "\n";


        if (arguments.size() != sem_analysis_scope::get_num_params(func_name)) {
            utility::sem_analysis_error("Number of arguments in function call do not match number of arguments in function definition", parser::current_line);
        }

        int current_param = 1;

        for (auto const& argument : arguments) {
            if (argument->get_ast_class() != "int" && 
                argument->get_ast_class() != "float" && 
                argument->get_ast_class() != "char" && 
                argument->get_ast_class() != "string" && 
                argument->get_ast_class() != "bool") 
            {
                argument->semantic_analysis();
            }

            if(argument->get_expr_type() != sem_analysis_scope::get_param_type(func_name, current_param)) {
                utility::sem_analysis_error("Argument in function call does not match exprected parameter type", parser::current_line);
            }

            current_param++;
        }
    }
}