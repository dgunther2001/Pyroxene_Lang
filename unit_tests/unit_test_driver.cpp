#include "lexer_tests/lexer_tests.cpp"
#include "../include/utility/utility.h"
#include "../include/parser/parser.h"
#include <iostream>
#include <fstream>

#define DEBUG_OPTION 5


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
        lexer::tokenize_file();
        for (int i = 0; i < lexer::token_stream.size(); i++) {
           print_individual_token(lexer::token_stream[i], lexer::stored_values[i]);
        }
        std::cout << "\n";
        std::cout << "Number of Tokens: " << lexer::token_stream.size() + 1 << "\n";

    #elif (DEBUG_OPTION == 2)
        while (true) {
            int token = lexer::get_token();
            if (token == lexer::tok_eof) {
                break;
            }
            std::cout << "[" << lexer::cur_tok_int_val << ", " << lexer::cur_tok_float_val << ", " << lexer::cur_tok_char_val << ", " <<
                lexer::cur_tok_string_val << ", " << lexer::cur_tok_bool_val << "]\n";
        }

    #elif (DEBUG_OPTION == 3)
        lexer::tokenize_file();
        for (int i = 0; i < lexer::token_stream.size(); i++) {
           print_individual_token(lexer::token_stream[i], lexer::stored_values[i]);
        }
        std::cout << "\n";
        std::cout << "Number of Tokens: " << lexer::token_stream.size() + 1 << "\n";

        parser::get_next_token();

        utility::initialize_operator_precendence();

        utility::primary_driver_loop();

        file.close();

    #elif (DEBUG_OPTION == 4) 
        lexer::tokenize_file();
        for (int i = 0; i < lexer::token_stream.size(); i++) {
            std::cout << i;
            if (lexer::stored_values[i] == std::nullopt) {
                std::cout << " nullopt.\n";
            } else {
                std::cout << " not nullopt.\n";
            }
            /* else if (lexer::stored_values[i].has_value()) {
                std::cout << std::get<std::string>(lexer::stored_values[i]);
            }
            */
        }
    
    #else
        lexer::tokenize_file();

        parser::get_next_token();

        utility::initialize_operator_precendence();

        utility::primary_driver_loop();

        file.close();
    #endif


    return 0;
}
