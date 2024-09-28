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
        /*
        if (assigned_value->get_expr_type() != type) {
            utility::parser_error("Value of invalid type passed to '" + identifier_name + "'", parser::current_line);
        }
        */
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
}