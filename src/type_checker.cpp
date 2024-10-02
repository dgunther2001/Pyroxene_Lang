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
        type_enum::types right_type = right->get_expr_type();

        if (left_type != right_type) {
            utility::sem_analysis_error("Invalid types connected in binary expression", parser::current_line);
        }

        set_expr_type(left->get_expr_type());
    }

    /**
     * TODO: docs
     */
    void ast::identifier_expr::semantic_analysis() {
        if (sem_analysis_scope::var_initialized(identifier_name) == false) {
            utility::sem_analysis_error("Value attempting to access not initialized", parser::current_line);
        }
        set_expr_type(sem_analysis_scope::get_var_type(identifier_name));
    }

    /**
     * TODO: docs
     */
    void ast::variable_declaration::semantic_analysis() {
        if (sem_analysis_scope::variable_exists_in_current_scope(identifier_name)) {
            utility::sem_analysis_error("Variable already declared or defined in the current scope", parser::current_line);
        }
        sem_analysis_scope::add_var_to_current_scope(identifier_name, type, false);
    }

    /**
     * @fn ast::variable_definition::semantic_analysis()
     * @par Validate that the declared type and the type of the expression match.
     * @code
     *  if (assigned_value->get_expr_type() != type) {
            utility::parser_error("Value of invalid type passed to '" + identifier_name + "'", parser::current_line);
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
    }

    /**
     * @fn ast::variable_assignment::semantic_analysis()
     * @par Validate that the type of variable being reassigned matches the type of the expression.
     * @code
     *  if (assigned_value->get_expr_type() != type) {
            utility::parser_error("Value of invalid type asssigned to '" + identifier_name + '"', parser::current_line);
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
    }

    /**
     * TODO: docs
     */
    void ast::if_expr::semantic_analysis() {

    }

    /**
     * TODO: docs
     */
    void ast::return_expr::semantic_analysis() {
        if (returned_value->get_ast_class() != "int" && returned_value->get_ast_class() != "float" && returned_value->get_ast_class() != "char" && returned_value->get_ast_class() != "string" && returned_value->get_ast_class() != "bool") {
            returned_value->semantic_analysis();
        }

        set_expr_type(returned_value->get_expr_type());
    }

    /**
     * TODO: docs
     */
    void ast::func_defn::semantic_analysis() {
        sem_analysis_scope::create_scope();
        for (auto const& paramter : parameters) {
            if (sem_analysis_scope::variable_exists_in_current_scope(paramter->get_name())) {
                utility::sem_analysis_error("Parameter already exists in current scope", parser::current_line);
            }

            sem_analysis_scope::add_var_to_current_scope(paramter->get_name(), paramter->get_expr_type(), true);
        }


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
     * TODO: docs
     */
    void ast::func_call_expr::semantic_analysis() {

    }
}