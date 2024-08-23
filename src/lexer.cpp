/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/lexer/lexer.h"

std::string identifier;
int64_t integer_value;
float float_value;
bool bool_value;
char char_value;
std::string string_value;
std::istream* input;

int get_token() {
    static int previous_character = ' '; 

    while (isspace(previous_character)) { // iterates over whitespace and ignores it
        previous_character = input->get();
    }

    if (previous_character == ';') {
        previous_character = input->get();
        return tok_semicolon;
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

        


        return tok_identifier;
        
    }

    if (previous_character == EOF) { 
        return tok_eof; 
    }

    int current_character = previous_character;
    previous_character = input->get();
    return current_character;
}