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
     * @brief Retrieves the next token from the input stream.
     * @details Updates the relevant associated value (can be std::nullopt).
     * 
     * @return The type of the next token identified in the input stream.
     */
    Token_Type get_token() {
        /**
         * @brief Stores the current character in `input` that is being considered.
         */
        static int previous_character = ' ';  

        /**
         * @brief Iterates over all whitespace and ignores it by incrementing the `previous_character`.
         */
        while (isspace(previous_character)) {  
            if (previous_character == '\n') line_count++; 
            previous_character = input->get(); 
        }

        /**
         * @brief Tokenizes all single character tokens, such as `(`, `{`, `+`, `EOF`, and others.
         */
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

        /**
         * @brief Deals with character consumption when handling comments (inline and multiline), as well as the division operator.
         */
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

        /**
         * @brief Finds keywords such as `int` and `class`, and lexes an identifier if the input stream doesn't yield a keyword.
         */
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

        /**
         * @brief Parses numeric input values and lexes an int or float based on whether the input contains a `.` or not.
         */
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

        /**
         * @brief Parses string literals.
         */
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

        /**
         * @brief Parses character literals.
         */
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
     * @brief Reads the input file and populates token_stream and stored_values.
     * @details Populates token_stream with the tokens and stored_values with their corresponding values.
     */
    void tokenize_file() {
        while (true) {
            /**
             * @brief Stores tokens in the `token_stream` vector.
             */
            Token_Type token = get_token();
            if (token == tok_eof) {
                token_stream.emplace_back(token);
                break;
            }
            token_stream.emplace_back(token); // deals with the EOF

            /**
             * @brief Stores values associated with the adjacent token in the `stored_values` vector.
             */
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