#include "lexer_tests/lexer_tests.cpp"
#include "../include/utility/utility.h"
#include "../include/parser/parser.h"
#include <iostream>
#include <fstream>

#define DEBUG_OPTION 0


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
    
    #if (DEBUG_OPTION == 1)
        while (true) {
            int token = lexer::get_token();
            if (token == lexer::tok_eof) {
                break;
            }
            print_individual_token(token);
        }
    #elif (DEBUG_OPTION == 2)
        while (true) {
            int token = lexer::get_token();
            if (token == lexer::tok_eof) {
                break;
            }
            std::cout << "[" << lexer::cur_tok_int_val << ", " << lexer::cur_tok_float_val << ", " << lexer::cur_tok_char_val << ", " <<
                lexer::cur_tok_string_val << ", " << lexer::cur_tok_bool_val << "]\n";
        }
    
    #else
        parser::get_next_token();

        utility::primary_driver_loop();

        file.close();
    #endif


    return 0;
}
