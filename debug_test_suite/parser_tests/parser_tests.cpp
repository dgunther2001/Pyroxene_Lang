/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/

#include "../../include/ast/ast.h"
#include "../../include/parser/parser.h"

#include <iostream>

namespace ast {

     /**
      * @fn ast::binary_expr::debug_output()
      * @code
      * std::cout << "Binary Expression " << ast::get_type_as_string(get_expr_type()) << " with operator " << get_op() << "\n"; 
      * @endcode
      */
     void ast::binary_expr::debug_output() {
          std::cout << "Binary Expression " << ast::get_type_as_string(get_expr_type()) << " with operator " << get_op() << "\n"; 
     }

     /**
      * @fn ast::identifier_expr::debug_output()
      * @code
      * std::cout << "Identifier expression (" << identifier_name << ")\n";
      * @endcode
      */
     void ast::identifier_expr::debug_output() {
          std::cout << "Identifier expression (" << identifier_name << ")\n";
     }

     /**
      * @fn ast::integer_expression::debug_output()
      * @code
      * std::cout << "Literal expression of type: int" << "\n"; 
      * @endcode
      */
     void ast::integer_expression::debug_output() {
          std::cout << "Literal expression of type: int (" << held_value << ")\n"; 
     }

     /**
      * @fn ast::float_expression::debug_output()
      * @code
      * std::cout << "Literal expression of type: float" << "\n"; 
      * @endcode
      */
     void ast::float_expression::debug_output() {
          std::cout << "Literal expression of type: float (" << held_value << ")\n"; 
     }

     /**
      * @fn ast::char_expression::debug_output()
      * @code
      * std::cout << "Literal expression of type: char" << "\n";
      * @endcode
      */
     void ast::char_expression::debug_output() {
          std::cout << "Literal expression of type: char (" << held_value << ")\n"; 
     }

     /**
      * @fn ast::string_expression::debug_output()
      * @code
      * std::cout << "Literal expression of type: string" << "\n"; 
      * @endcode
      */
     void ast::string_expression::debug_output() {
          std::cout << "Literal expression of type: string (" << held_value << ")\n"; 
     }

     /**
      * @fn ast::bool_expression::debug_output()
      * @code
      * std::cout << "Literal expression of type: bool" << "\n"; 
      * @endcode
      */
     void ast::bool_expression::debug_output() {
          std::cout << "Literal expression of type: bool (" << held_value << ")\n"; 
     }

     /**
      * @fn ast::variable_declaration::debug_output()
      * @code
      * std::cout << "Variable declaration of type: " << ast::get_type_as_string(get_expr_type()) << "\n";
      * @endcode
      */
     void ast::variable_declaration::debug_output() {
          std::cout << "Variable declaration of type (" << identifier_name << "): " << ast::get_type_as_string(get_expr_type()) << "\n";
     }

     /**
      * @fn ast::variable_definition::debug_output()
      * @code
      * std::cout << "Variable definition of type: " << ast::get_type_as_string(get_expr_type()) << "\n";
      * @endcode
      */
     void ast::variable_definition::debug_output() {
          std::cout << "Variable definition of type (" << identifier_name << "): " << ast::get_type_as_string(get_expr_type()) << "\n";
     }

     /**
      * @fn ast::variable_assignment::debug_output()
      * @code
      * std::cout << "Variable assignment of type: " << ast::get_type_as_string(get_expr_type()) << "\n";
      * @endcode
      */
     void ast::variable_assignment::debug_output() {
          std::cout << "Variable assignment of type (" << identifier_name << "): " << ast::get_type_as_string(get_expr_type()) << "\n";
     }

     /**
      * @fn ast::return_expr::debug_output()
      * @code
      * std::cout << "Parsed return statement.\n";
      * @endcode
      */
     void ast::return_expr::debug_output() {
          std::cout << "Parsed return statement\n";
     }


     /**
      * @fn ast::func_defn::debug_output()
      * @code
      * std::cout << "Parsing function with name: " << func_name << "\n";
      * @endcode
      */
     void ast::func_defn::debug_output() {
          std::cout << "Parsed function with name: " << func_name << "\n";
     }

     /**
      * @fn ast::if_expr::debug_output()
      * @code
      * std::cout << "Parsed if statement\n";
      * @endcode
      */
     void ast::if_expr::debug_output() {
          std::cout << "Parsed if statement\n";
     }

     /**
      * @fn ast::else_expr::debug_output()
      * @code
      * std::cout << "Parsed else statement\n";
      * @endcode
      */
     void ast::else_expr::debug_output() {
          std::cout << "Parsed else statement\n";
     }

     /**
      * @fn ast::func_call_expr::debug_output()
      * @code
      * std::cout << "Parsed function call (" << func_name << "\n";
      * @endcode
      */
     void ast::func_call_expr::debug_output() {
          std::cout << "Parsed function call (" << func_name << ")\n";
     }

     /**
      * @fn ast::graph_decl_expr::debug_output()
      * @code
      *  std::cout << "Parsing graph declaration (" << graph_name << ") of type " << ast::get_type_as_string(get_expr_type()) << "\n";
      * @endcode
      */     
     void ast::graph_decl_expr::debug_output() {
          std::cout << "Parsing graph declaration (" << graph_name << ") of type " << ast::get_type_as_string(get_expr_type()) << "\n";
     }

     /**
      * @fn ast::list_decl::debug_output()
      * @code
      *  std::cout << "Parsing list declaration (" << name << ") of type " << ast::get_type_as_string(get_expr_type()) << "\n";
      * @endcode
      */
     void ast::list_decl::debug_output() {
          std::cout << "Parsing list declaration (" << name << ") of type " << ast::get_type_as_string(get_expr_type()) << "\n";
     }

     /**
      * @fn ast::method_dot_call::debug_output()
      * @code
      *  std::cout << "Parsing dot call on " << item_name << "\n";
      * @endcode
      */
     void ast::method_dot_call::debug_output() {
          std::string arg_string = "";
          for (auto const& arg : args) {
               arg_string = arg_string + arg->get_ast_class() + " ";
          }
          std::cout << "Parsing method dot call (" << called << ") on " << item_name << " with arguments classes -> " << arg_string << "\n" ;
     }

     /**
      * @fn ast::dot_call_var::debug_output()
      * @code
      *  std::cout << "Parsing variable dot call on " << item_name << "\n";
      * @endcode
      */
     void ast::dot_call_var::debug_output() {
          std::cout << "Parsing variable dot call (" << called << ") on " << item_name << "\n";
     }
}

