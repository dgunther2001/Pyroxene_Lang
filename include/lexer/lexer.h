/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#include <string>
#include <istream>

enum Token_Type {
    tok_eof = -1,
    tok_int = -10,
    tok_float = -20,
    tok_bool = -30,
    tok_char = -40,
    tok_string = -50,
    tok_identifier = -60,
    tok_semicolon = -70,
};

extern std::string identifier;
extern int64_t integer_value;
extern float float_value;
extern bool bool_value;
extern char char_value;
extern std::string string_value;
extern std::istream* input;

extern int get_token();