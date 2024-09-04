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

    /**
     * @brief Tracks the current line number being processed in the input stream.
     */
    extern int line_count;

    /**
     * @brief Enumeration of all possible tokens that are valid.
     * @details Defines all the types of tokens, using negative values to avoid ASCII collisions.
     */
    enum Token_Type {
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

    /**
     * @brief A type definition using std::variant to store different values associated with tokens.
     * @details Can store strings, integers, floats, characters, or booleans.
     */
    typedef std::variant<std::string, int, float, char, bool> lexer_stored_values;

    /**
     * @brief A vector that stores tokens lexed from the input stream.
     */
    extern std::vector<Token_Type> token_stream;

    /**
     * @brief A vector that stores the optional values associated with each token.
     * @details Can be strings, integers, floats, characters, booleans, or std::nullopt.
     */
    extern std::vector<std::optional<lexer_stored_values>> stored_values;

    /**
     * @brief Stores the current identifier from the input stream if identified.
     */
    extern std::string identifier;

    /**
     * @brief Stores the current integer value from the input stream if identified.
     */
    extern int integer_value;

    /**
     * @brief Stores the current float value from the input stream if identified.
     */
    extern float float_value;

    /**
     * @brief Stores the current boolean value from the input stream if identified.
     */
    extern bool bool_value;

    /**
     * @brief Stores the current character value from the input stream if identified.
     */
    extern char char_value;

    /**
     * @brief Stores the current string value from the input stream if identified.
     */
    extern std::string string_value;

    /**
     * @brief Pointer to the input stream (a .pyrx file).
     */
    extern std::istream* input;

    extern Token_Type get_token(); 

    extern void tokenize_file();
}

#endif // LEXER_H