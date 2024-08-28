/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#ifndef LEXER_H
#define LEXER_H

#include <string>
#include <istream>

namespace lexer {

    extern int line_count; // holds a line count variable for debug messages

    enum Token_Type { // defines all of the types of tokens (in negative to avoid ASCII collissions)
        tok_eof = -1,
        tok_dot = -3,
        tok_true = -5,
        tok_false = -6,
        tok_int = -10,
        tok_float = -20,
        tok_bool = -30,
        tok_char = -40,
        tok_def = -41,
        tok_string = -50,
        tok_int_val = -55,
        tok_float_val = -56,
        tok_string_val = -57,
        tok_char_val = -58,
        tok_identifier = -60,
        tok_semicolon = -70,
        tok_open_paren = -71,
        tok_close_paren = -72,
        tok_open_brack = -73,
        tok_close_brack = -74,
        tok_open_arr = -75,
        tok_close_arr = -76,
        tok_comma = -77,
        tok_for = -80,
        tok_plus = -81,
        tok_minus = -82,
        tok_mult = -83,
        tok_div = -84,
        tok_while = -90,
        tok_assignment = -100,
        tok_class = -110,
        tok_graph = -120,
        tok_return = -130
    };

    // various variables that encode user defined variables that hold the value of the token as well
    extern std::string identifier;
    extern int integer_value;
    extern float float_value;
    extern bool bool_value;
    extern char char_value;
    extern std::string string_value;
    extern std::istream* input;

    extern int get_token(); // primary lexer function

}

#endif