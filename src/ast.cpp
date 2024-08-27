/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/ast/ast.h"

namespace ast {
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