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
     * @par Validate that the left and right expressions in a binary expression match types.
     * @code
     *  if ((left->get_expr_type() != type) || right->get_expr_type() != type) {
            utility::parser_error("Invalid types connected in binary expression", parser::current_line);
        }
     * @endcode
     */
    void ast::binary_expr::semantic_analysis() {
        /*
        if ((left->get_expr_type() != type) || right->get_expr_type() != type) {
            utility::parser_error("Invalid types connected in binary expression", parser::current_line);
        }
        */
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
            utility::scoping_error("Variable already declared or defined in the current scope", parser::current_line);
        }

        // WHAT ABOUT IDENTIFIERS???
        if (assigned_value->get_expr_type() != type) {

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
        /*
        if (assigned_value->get_expr_type() != type) {
            utility::parser_error("Value of invalid type asssigned to '" + identifier_name + '"', parser::current_line);
        }
        */
    }

    void ast::identifier_expr::semantic_analysis() {

    }

    void ast::if_expr::semantic_analysis() {

    }

    void ast::func_defn::semantic_analysis() {
        sem_analysis_scope::create_scope();
        for (auto const& ast_node : expressions) {
            ast_node->semantic_analysis();
        }
        sem_analysis_scope::exit_scope();
    }
}