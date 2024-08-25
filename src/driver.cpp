/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/ast/ast.h"
#include "../include/codegen/codegen.h"
#include "../include/lexer/lexer.h"
#include "../include/parser/parser.h"
#include "../include/type_checker/type_checker.h"
#include "../include/utility/utility.h"

#include <iostream>
#include <fstream>


int main(int argc, char** argv) {

    std::cout << "My LLVM Driver is Working\n";

    std::fstream file;
    if (argc > 1) {
        file.open(argv[1]);
        if (!file) {
            fprintf(stderr, "File not found.\n");
            return 0;
        }
        lexer::input = &file;
    } else {
        fprintf(stderr, ">> "); // prime the inital token
        lexer::input = &std::cin;
    }


    return 0;
}