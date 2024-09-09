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

    std::vector<Token_Type> token_stream;
    std::vector<std::optional<lexer_stored_values>> stored_values;

    std::string identifier; 
    int integer_value; 
    float float_value; 
    bool bool_value; 
    char char_value; 
    std::string string_value; 
    std::istream* input; 

    /**
     * <h4> This function reads characters from the input stream and categorizes them into tokens, and updates the relevant associated value, which can be `std::nullopt` if not applicable. </h4>
     * 
     * @par Handling Whitespaces
     * Iterates over all whitespace and ignores it by incrementing the `previous_character`:
     * @code
     * while (isspace(previous_character)) {  
     *     if (previous_character == '\n') line_count++; 
     *     previous_character = input->get(); 
     * }
     * @endcode
     * 
     * @par Single Character Tokens
     * Tokenizes all single character tokens, such as `(`, `{`, `+`, `EOF`, and others:
     * @code
     * if (previous_character == ';') {
     *     previous_character = input->get();
     *     return tok_semicolon;
     * }
     * if (previous_character == '=') {
     *     previous_character = input->get();
     *     return tok_assignment;
     * }
     * if (previous_character == '(') { 
     *     previous_character = input->get();
     *     return tok_open_paren;
     * }
     * if (previous_character == ')') {
     *     previous_character = input->get();
     *     return tok_close_paren;
     * }
     * if (previous_character == '{') {
     *     previous_character = input->get();
     *     return tok_open_brack;
     * }
     * if (previous_character == '}') {
     *     previous_character = input->get();
     *     return tok_close_brack;
     * }
     * if (previous_character == '[') {
     *     previous_character = input->get();
     *     return tok_open_arr;
     * }
     * if (previous_character == ']') {
     *     previous_character = input->get();
     *     return tok_close_arr;
     * }
     * if (previous_character == '.') {
     *     previous_character = input->get();
     *     return tok_dot;
     * }
     * if (previous_character == ',') {
     *     previous_character = input->get();
     *     return tok_comma;
     * } 
     * if (previous_character == EOF) { 
     *     return tok_eof; 
     * }
     * if (previous_character == '+') {
     *     previous_character = input->get();
     *     return tok_plus;
     * }
     * if (previous_character == '-') {
     *     previous_character = input->get();
     *     return tok_minus;
     * }
     * if (previous_character == '*') {
     *     previous_character = input->get();
     *     return tok_mult;
     * }
     * @endcode
     * 
     * @par Comments and Division
     * Deals with character consumption when handling comments (inline and multiline), as well as the division operator:
     * @code
     * if (previous_character == '/') { 
     *     previous_character = input->get(); 
     *     if (isspace(previous_character)) {
     *         previous_character = input->get();
     *         return tok_div;
     *     }
     * 
     *     if (previous_character == '/') { 
     *         do { 
     *             previous_character = input->get(); 
     *         } while (previous_character != '\n' && previous_character != EOF);
     *     }
     * 
     *     if (previous_character == '*') {  
     *         previous_character = input->get(); 
     * 
     *         while (true) { 
     *             if (previous_character == '*') { 
     *                 previous_character = input->get(); 
     *                 if (previous_character == '/') { 
     *                     previous_character = input->get(); 
     *                     return get_token(); 
     *                 }
     *             } else if (previous_character == '\n') { 
     *                 line_count++;
     *             } else if (previous_character == EOF) { 
     *                 utility::lexer_error("Unterminated multiline comment", line_count);
     *             }
     *             previous_character = input->get(); 
     *         }
     *     }
     * 
     *     if (previous_character == EOF) {
     *         return tok_eof;
     *     }
     * 
     *     if (previous_character == '\n') {
     *         line_count++;
     *     }
     * 
     *     previous_character = input->get(); 
     *     return get_token(); 
     * }
     * @endcode
     * 
     * @par Keywords and Identifiers
     * Handles parsing alphanumeric input into keyword and identifier tokens:
     * @code
     * if (isalpha(previous_character) || previous_character == '_') { 
     *     identifier = previous_character; 
     *     while (isalnum(previous_character = input->get()) || (previous_character == '_')) { 
     *         identifier += previous_character; 
     *     }
     * 
     *     if (identifier == "int") {
     *         return tok_int;
     *     }
     *     
     *     if (identifier == "float") {
     *         return tok_float;
     *     }
     * 
     *     if (identifier == "bool") {
     *         return tok_bool;
     *     }
     *     
     *     if (identifier == "char") {
     *         return tok_char;
     *     }
     * 
     *     if (identifier == "string") {
     *         return tok_string;
     *     }
     * 
     *     if (identifier == "for") {
     *         return tok_for;
     *     }
     * 
     *     if (identifier == "while") {
     *         return tok_while;
     *     }
     * 
     *     if (identifier == "true") {
     *         return tok_true;
     *     }
     * 
     *     if (identifier == "false") {
     *         return tok_false;
     *     }
     * 
     *     if (identifier == "class") {
     *         return tok_class;
     *     }
     * 
     *     if (identifier == "graph") {
     *         return tok_graph;
     *     }
     * 
     *     if (identifier == "return") {
     *         return tok_return;
     *     }
     * 
     *     if (identifier == "def") {
     *         return tok_def;
     *     }
     * 
     *     return tok_identifier;
     * }
     * @endcode
     * 
     * @par Integers and Floats
     * Deals with integer and floating point literals:
     * @code
     * if (isdigit(previous_character)) { 
     *     std::string temp_num; 
     *     bool is_float = false; 
     * 
     *     do {
     *         temp_num += previous_character; 
     * 
     *         if (previous_character == '.' && is_float == true) { 
     *             utility::lexer_error("Too many decimal points passed to FP number", line_count); 
     *         } else if (previous_character == '.') { 
     *             is_float = true; 
     *         }
     * 
     *         previous_character = input->get(); 
     *     
     *         if (previous_character == EOF) { 
     *             utility::lexer_error("Unexpected end of input while reading a number", line_count);
     *         }
     * 
     *     }  while(isdigit(previous_character) || previous_character == '.'); 
     * 
     *     if (is_float == true) { 
     *         float_value = strtod(temp_num.c_str(), nullptr); 
     *         return tok_float_val;
     *     }
     * 
     *     integer_value = std::stoi(temp_num); 
     *     return tok_int_val;
     * }
     * @endcode
     * 
     * @par String Literals
     * Deals with tokenization of string literals:
     * 
     * @code
     *  if (previous_character == '"') { 
     *      string_value = ""; 
     *      while (true) { 
     *          previous_character = input->get(); 
     * 
     *           if (previous_character == '"') { 
     *               previous_character = input->get();
     *               return tok_string_val;
     *           }
     * 
     *           if (previous_character == EOF || previous_character == ';') { 
     *               utility::lexer_error("Unterminated string", line_count);
     *               break;
     *           }
     * 
     *           string_value += previous_character; 
     *      }
     *  }
     * 
     * @endcode
     * 
     * @par Character Literals
     * Deals with tokenization of character literals:
     * @code
     * 
     * if (previous_character == '\'') { 
     *     previous_character = input->get(); 
     * 
     *     if (previous_character == EOF) { 
     *         utility::lexer_error("Unterminated character", line_count);
     *     }
     * 
     *     if (previous_character == '\'') { 
     *          utility::lexer_error("No character provided", line_count);
     *     }
     * 
     *     char_value = previous_character; 
     * 
     *     previous_character = input->get(); 
     * 
     *     if (previous_character == EOF) { 
     *         utility::lexer_error("Unterminated character", line_count);
     *     } else if (previous_character != '\'') { 
     *         utility::lexer_error("Unterminated character", line_count);
     *     }
     * 
     *     previous_character = input->get(); 
     *     return tok_char_val; 
     * }
     * 
     * int current_character = previous_character; 
     * @endcode
     */
    Token_Type get_token() {

        static int previous_character = ' ';  

        while (isspace(previous_character)) {  
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

        if (previous_character == '[') {
            previous_character = input->get();
            return tok_open_arr;
        }

        if (previous_character == ']') {
            previous_character = input->get();
            return tok_close_arr;
        }

        if (previous_character == '.') {
            previous_character = input->get();
            return tok_dot;
        }

        if (previous_character == ',') {
            previous_character = input->get();
            return tok_comma;
        } 

        if (previous_character == EOF) { 
            return tok_eof; 
        }

        if (previous_character == '+') {
            previous_character = input->get();
            return tok_plus;
        }

        if (previous_character == '-') {
            previous_character = input->get();
            return tok_minus;
        }

        if (previous_character == '*') {
            previous_character = input->get();
            return tok_mult;
        }

        if (previous_character == '/') { 
            previous_character = input->get(); 
            if (isspace(previous_character)) {
                previous_character = input->get();
                return tok_div;
            }

            if (previous_character == '/') { 
                do { 
                    previous_character = input->get(); 
                } while (previous_character != '\n' && previous_character != EOF);
            }

            if (previous_character == '*') {  
                previous_character = input->get(); 
                while (true) { 
                    if (previous_character == '*') { 
                        previous_character = input->get(); 
                        if (previous_character == '/') { 
                            previous_character = input->get(); 
                            return get_token(); 
                        }
                    } else if (previous_character == '\n') { 
                        line_count++;
                    } else if (previous_character == EOF) { 
                        utility::lexer_error("Unterminated multiline comment", line_count);
                    }
                    previous_character = input->get(); 
                }
            }

            if (previous_character == EOF) {
                return tok_eof;
            }

            if (previous_character == '\n') {
                line_count++;
            }

            previous_character = input->get(); 
            return get_token(); 
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

            if (identifier == "return") {
                return tok_return;
            }

            if (identifier == "def") {
                return tok_def;
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

            if (previous_character == '\'') { 
                 utility::lexer_error("No character provided", line_count);
            }

            char_value = previous_character; 

            previous_character = input->get(); 

            if (previous_character == EOF) { 
                utility::lexer_error("Unterminated character", line_count);
            } else if (previous_character != '\'') { 
                utility::lexer_error("Unterminated character", line_count);
            }

            previous_character = input->get(); 
            return tok_char_val; 
        }

        int current_character = previous_character; 
    }

    /**
     * 
     * <h4> This function reads through the entire input stream and calls `get_token()` 
     *  to retrieve tokens and their associated values. It continuously populates the 
     * `token_stream` with the tokens and `stored_values` with their corresponding values. </h4>
     *
     * @par Token Storage
     * Stores tokens in the `token_stream` vector:
     * @code
     * Token_Type token = get_token();
     * if (token == tok_eof) {
     *     token_stream.emplace_back(token);
     *     break;
     * }
     * token_stream.emplace_back(token);
     * @endcode
     *
     * @par Associated Value Storage
     * Stores values associated with the adjacent token in the `stored_values` vector. Depending on the token type, 
     * it stores various types of values such as identifiers, integers, floats, characters, strings, or booleans:
     * @code
     * switch (token) {
     *     case tok_identifier:
     *         stored_values.emplace_back(identifier);
     *         break;
     *     case tok_int_val:
     *         stored_values.emplace_back(integer_value);
     *         break;
     *     case tok_float_val:
     *         stored_values.emplace_back(float_value);
     *         break;
     *     case tok_char_val:
     *         stored_values.emplace_back(char_value);
     *         break;
     *     case tok_string_val:
     *         stored_values.emplace_back(string_value);
     *         break;
     *     case tok_true: case tok_false:
     *         stored_values.emplace_back(bool_value);
     *         break;
     *     default:
     *         stored_values.emplace_back(std::nullopt);
     *         break;
     * }
     * @endcode
     */
    void tokenize_file() {
        while (true) {

            Token_Type token = get_token();
            if (token == tok_eof) {
                token_stream.emplace_back(token);
                break;
            }
            token_stream.emplace_back(token);

            switch (token) {
                case tok_identifier:
                    stored_values.emplace_back(identifier);
                    break;
                case tok_int_val:
                    stored_values.emplace_back(integer_value);
                    break;
                case tok_float_val:
                    stored_values.emplace_back(float_value);
                    break;
                case tok_char_val:
                    stored_values.emplace_back(char_value);
                    break;
                case tok_string_val:
                    stored_values.emplace_back(string_value);
                    break;
                case tok_true: case tok_false:
                    stored_values.emplace_back(bool_value);
                    break;
                default:
                    stored_values.emplace_back(std::nullopt);
                    break;
            }
        }
    }

}