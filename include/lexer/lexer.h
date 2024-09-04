/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#ifndef LEXER_H
#define LEXER_H

#include <string>
#include <vector>
#include <istream>
#include <optional>
#include <variant>

namespace lexer {

    // <a name="line_count"></a>
    extern int line_count; // holds a line count variable for debug messages

    // <a name="Token_Type"></a>
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

    // <a name="lexer_stored_values"></a>
    typedef std::variant<std::string, int, float, char, bool> lexer_stored_values;

    // <a name="token_stream"></a>
    extern std::vector<Token_Type> token_stream;

    // <a name="stored_values"></a>
    extern std::vector<std::optional<lexer_stored_values>> stored_values;

    // <a name="identifier"></a>
    extern std::string identifier;

    // <a name="integer_value"></a>
    extern int integer_value;

    // <a name="float_value"></a>
    extern float float_value;

    // <a name="bool_value"></a>
    extern bool bool_value;

    // <a name="char_value"></a>
    extern char char_value;

    // <a name="string_value"></a>
    extern std::string string_value;

    // <a name="input"></a>
    extern std::istream* input;



    extern Token_Type get_token(); 

    extern void tokenize_file();
}

#endif