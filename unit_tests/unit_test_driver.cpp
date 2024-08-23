#include "lexer_tests/lexer_tests.cpp"
#include <iostream>
#include <fstream>

int main(int argc, char **argv) {



    std::cout << "In debug mode\n"; 

    std::fstream file;
    if (argc > 1) {
        file.open(argv[1]);
        if (!file) {
            fprintf(stderr, "File not found.\n");
            return 0;
        }
        input = &file;
    } else {
        fprintf(stderr, ">> "); 
        input = &std::cin;
    }

    while (true) {
        int token = get_token();
        if (token == tok_eof) {
            break;
        }
        print_individual_token(token);
    }

    return 0;
}