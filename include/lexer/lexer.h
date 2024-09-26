/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/

#ifndef LEXER_H
#define LEXER_H

#include <string>
#include <vector>
#include <istream>
#include <optional>
#include <variant>

namespace lexer {

    /**
     * @par Tracks the current line number being processed in the input stream.
     */
    extern int line_count;

    /**
     * @par Enumeration of all possible tokens that are valid, that defines all the types of tokens, using negative values to avoid ASCII collisions.
     */
    enum Token_Type {
        tok_eof = -1,          ///< End of file
        tok_dot = -3,          ///< Dot character
        tok_true = -5,         ///< Boolean true
        tok_false = -6,        ///< Boolean false
        tok_int = -10,         ///< Integer type
        tok_float = -20,       ///< Float type
        tok_bool = -30,        ///< Boolean type
        tok_void = -35,        ///< Void type
        tok_char = -40,        ///< Character type
        tok_def = -41,         ///< Function definition keyword
        tok_if = -45,          ///< If keyword
        tok_else = -46,        ///< Else keyword
        tok_string = -50,      ///< String type
        tok_int_val = -55,     ///< Integer literal value
        tok_float_val = -56,   ///< Float literal value
        tok_string_val = -57,  ///< String literal value
        tok_char_val = -58,    ///< Character literal value
        tok_identifier = -60,  ///< Identifier
        tok_semicolon = -70,   ///< Semicolon
        tok_open_paren = -71,  ///< Open parenthesis
        tok_close_paren = -72, ///< Close parenthesis
        tok_open_brack = -73,  ///< Open bracket
        tok_close_brack = -74, ///< Close bracket
        tok_open_arr = -75,    ///< Open array
        tok_close_arr = -76,   ///< Close array
        tok_comma = -77,       ///< Comma
        tok_for = -80,         ///< For loop keyword
        tok_plus = -81,        ///< Plus operator
        tok_minus = -82,       ///< Minus operator
        tok_mult = -83,        ///< Multiplication operator
        tok_div = -84,         ///< Division operator
        tok_while = -90,       ///< While loop keyword
        tok_assignment = -100, ///< Assignment operator
        tok_class = -110,      ///< Class keyword
        tok_graph = -120,      ///< Graph keyword
        tok_return = -130      ///< Return statement
    };

    /**
     * 
     * @par A type definition using std::variant to store different values associated with tokens, that can store strings, integers, floats, characters, or booleans.
     */
    typedef std::variant<std::string, int64_t, float, char, bool> lexer_stored_values;

    /**
     * @par A vector that stores tokens lexed from the input stream.
     */
    extern std::vector<Token_Type> token_stream;

    /**
     * @par A vector that stores the optional values associated with each token, that can be strings, integers, floats, characters, booleans, or std::nullopt.
     */
    extern std::vector<std::optional<lexer_stored_values>> stored_values;

    /**
     * @par Stores the current identifier from the input stream if applicable.
     */
    extern std::string identifier;

    /**
     * @par Stores the current integer value from the input stream if applicable.
     */
    extern int64_t integer_value;

    /**
     * @par Stores the current float value from the input stream if applicable.
     */
    extern float float_value;

    /**
     * @par Stores the current boolean value from the input stream if applicable.
     */
    extern bool bool_value;

    /**
     * @par Stores the current character value from the input stream if applicable.
     */
    extern char char_value;

    /**
     * @par Stores the current string value from the input stream if applicable.
     */
    extern std::string string_value;

    /**
     * @par Pointer to the input stream (a .pyrx file).
     */
    extern std::istream* input;

    extern Token_Type get_token(); 

    extern void tokenize_file();
}

#endif // LEXER_H