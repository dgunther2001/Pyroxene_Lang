/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/


#include "../include/utility/utility.h"

namespace utility {

    void lexer_error(const std::string& message, int line) {
        std::cout << "Error: " << message << " on line " << line << std::endl;
        std::abort();
    }

}