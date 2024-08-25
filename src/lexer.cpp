/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/lexer/lexer.h"
#include "../include/utility/utility.h"

namespace lexer {

    int line_count = 1;

    std::string identifier;
    int integer_value;
    float float_value;
    bool bool_value;
    char char_value;
    std::string string_value;
    std::istream* input;

    int get_token() {
        static int previous_character = ' '; 

        while (isspace(previous_character)) { // iterates over whitespace and ignores it
            if (previous_character == '\n') line_count++;
            previous_character = input->get();
        }

        if (previous_character == ';') {
            previous_character = input->get();
            return tok_semicolon;
        }

        if (previous_character == '=') {
            previous_character = input->get();
            return tok_assignment;
        }

        if (previous_character == '/') {
            previous_character = input->get();
            if (previous_character == '/') {
                do {
                    previous_character = input->get();
                } while (previous_character != '\n' && previous_character != EOF);
            }
            if (previous_character == EOF) {
                return tok_eof;
            }

            if (previous_character == '\n') {
                line_count++;
            }

            previous_character = input->get();
            return tok_comment;
        }

        if (previous_character == '(') {
            previous_character = input->get();
            return tok_open_paren;
        }

        if (previous_character == ')') {
            previous_character = input->get();
            return tok_close_paren;
        }

        if (previous_character == '{') {
            previous_character = input->get();
            return tok_open_brack;
        }

        if (previous_character == '}') {
            previous_character = input->get();
            return tok_close_brack;
        }

        if (previous_character == '.') {
            previous_character = input->get();
            return tok_dot;
        }

        if (isalpha(previous_character) || previous_character == '_') {
            identifier = previous_character;
            while (isalnum(previous_character = input->get()) || (previous_character == '_')) {
                identifier += previous_character;
            }

            if (identifier == "int") {
                return tok_int;
            }
            
            if (identifier == "float") {
                return tok_float;
            }

            if (identifier == "bool") {
                return tok_bool;
            }
            
            if (identifier == "char") {
                return tok_char;
            }

            if (identifier == "string") {
                return tok_string;
            }

            if (identifier == "for") {
                return tok_for;
            }

            if (identifier == "while") {
                return tok_while;
            }

            if (identifier == "true") {
                return tok_true;
            }

            if (identifier == "false") {
                return tok_false;
            }

            if (identifier == "class") {
                return tok_class;
            }

            if (identifier == "graph") {
                return tok_graph;
            }

            return tok_identifier;
            
        }

        if (isdigit(previous_character)) {
            std::string temp_num;
            bool is_float = false;

            do {
                temp_num += previous_character;

                if (previous_character == '.' && is_float == true) {
                    utility::lexer_error("Too many decimal points passed to FP number", line_count);
                    //throw std::runtime_error("Invalid number of decimal points in floating point number.");
                } else if (previous_character == '.') {
                    is_float = true;
                }

                previous_character = input->get();
            
                if (previous_character == EOF) {
                    utility::lexer_error("Unexpected end of input while reading a number", line_count);
                }

            }  while(isdigit(previous_character) || previous_character == '.');

            if (is_float == true) {
                float_value = strtod(temp_num.c_str(), nullptr);
                return tok_float_val;
            }

            integer_value = std::stoi(temp_num);
            return tok_int_val;

        }

        if (previous_character == '"') {
            string_value = "";
            while (true) {
                previous_character = input->get();

                if (previous_character == '"') {
                    previous_character = input->get();
                    return tok_string_val;
                }

                if (previous_character == EOF || previous_character == ';') {
                    utility::lexer_error("Unterminated string", line_count);
                    break;
                }


                string_value += previous_character;
            }
        }

        if (previous_character == '\'') {
            previous_character = input->get();

            if (previous_character == EOF) {
                utility::lexer_error("Unterminated character", line_count);
            }

            char_value = previous_character;

            previous_character = input->get();

            if (previous_character == EOF) {
                utility::lexer_error("Unterminated character", line_count);
            } else if (previous_character != '\'') {
                utility::lexer_error("Invalid character, expected closing quotes", line_count);
            }

            previous_character = input->get();

            return tok_char_val;
        }

        if (previous_character == EOF) { 
            return tok_eof; 
        }

        int current_character = previous_character;
        previous_character = input->get();
        return current_character;
    }

}