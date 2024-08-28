#include "lexer_tests/lexer_tests.cpp"
#include "../include/utility/utility.h"
#include "../include/parser/parser.h"
#include <iostream>
#include <fstream>


int main(int argc, char** argv) {

    std::cout << "Debug mode\n";

    if (argc != 2) {
        utility::driver_args_error(argc);
    }

    std::fstream file;
    std::string file_name = argv[1];
    
    if (file_name.find(".pyrx") == std::string::npos) {
        utility::driver_extension_error("Incorrect file extension on ", file_name);
    }
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

    
    while (true) {
        int token = lexer::get_token();
        if (token == lexer::tok_eof) {
            break;
        }
        print_individual_token(token);
    }
    
    
    lexer::get_token();

    utility::primary_driver_loop();


    return 0;
}
