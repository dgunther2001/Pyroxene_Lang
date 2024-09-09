/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/ast/ast.h"

namespace ast {

    /**
     * <h4> This function maps types defined in the enumerator to string for debug use when parsing AST nodes. </h4>
     * @code
        switch (type) {
            case (int_type):
                return "int";
            case (float_type):
                return "float";
            case (char_type):
                return "char";
            case (string_type):
                return "string";
            case (bool_type):
                return "bool";
            default: 
                return "";
        }
     * @endcode
     */
    std::string get_type_as_string(types type) {
        switch (type) {
            case (int_type):
                return "int";
            case (float_type):
                return "float";
            case (char_type):
                return "char";
            case (string_type):
                return "string";
            case (bool_type):
                return "bool";
            default: // ADD ERROR HANDLING HERE
                return "";
        }
    }
}