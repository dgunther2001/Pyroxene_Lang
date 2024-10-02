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
            case (type_enum::int_type):
                return "int";
            case (type_enum::float_type):
                return "float";
            case (type_enum::char_type):
                return "char";
            case (type_enum::string_type):
                return "string";
            case (type_enum::bool_type):
                return "bool";
            case (type_enum::void_type):
                return "void";
            default: // ADD ERROR HANDLING HERE
                return "";
        }
     * @endcode
     */
    std::string get_type_as_string(type_enum::types type) {
        switch (type) {
            case (type_enum::int_type):
                return "int";
            case (type_enum::float_type):
                return "float";
            case (type_enum::char_type):
                return "char";
            case (type_enum::string_type):
                return "string";
            case (type_enum::bool_type):
                return "bool";
            case (type_enum::void_type):
                return "void";
            default: // ADD ERROR HANDLING HERE
                return "";
        }
    }
}