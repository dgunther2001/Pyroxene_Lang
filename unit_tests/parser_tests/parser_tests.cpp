/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#include "../../include/ast/ast.h"
#include "../../include/parser/parser.h"

#include <iostream>

void ast::binary_expr::debug_output() {
    std::cout << "Binary Expression: "; // incomplete...
}

void ast::identifier_expr::debug_output() {
    
}

void ast::integer_expression::debug_output() {
    std::cout << "Expression of type: int" << "\n"; 
}

void ast::float_expression::debug_output() {
     std::cout << "Expression of type: float" << "\n"; 
}

void ast::char_expression::debug_output() {
     std::cout << "Expression of type: char" << "\n"; 
}

void ast::string_expression::debug_output() {
     std::cout << "Expression of type: string" << "\n"; 
}

void ast::bool_expression::debug_output() {
     std::cout << "Expression of type: bool" << "\n"; 
}

void ast::variable_declaration::debug_output() {
     std::cout << "Variable declaration of type: " << ast::get_type_as_string(get_expr_type()) << "\n";
}

void ast::variable_definition::debug_output() {

}

void ast::variable_assignment::debug_output() {
    
}

