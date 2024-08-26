/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#include "../include/lexer/lexer.h"
#include "../include/utility/utility.h"

/*
    Objective: to take am input file in Pyroxene syntax and output a stream of tokens and store nexessary user defined values to be pased into an AST/Parser
    Methodology: pass through each individual character in a pyroxene file and differentiate between different keywords, identifiers, and output a token based on what was lexed
*/
namespace lexer {

    int line_count = 1; // holds a line count for error handling

    std::string identifier; // holds user defined identifiers
    int integer_value; // holds integer values
    float float_value; // holds floating point values
    bool bool_value; // holds boolean values
    char char_value; // holds character values
    std::string string_value; // holds string values
    std::istream* input; // a pointer to the eactual input stream

    /*
        Objective: look at the current character in the input stream and advance until a full token has been identified
        Return: returns an integer value corresponding to values in the enum Token_Type
        Arguments: none
    */
    int get_token() {
        static int previous_character = ' ';  // initializes the previous character to an empty character to avoid undefined behaviour

        /*
            Objective: ignore whitespace 
            Methodology: advances the current token until all whitespace has been consumed
        */
        while (isspace(previous_character)) {  // if the current token is whitespace...
            if (previous_character == '\n') line_count++; // if the current character is a newline, 
            previous_character = input->get(); // go to the next character in the input stream and proceed
        }

        // if we see a semicolon, return a semicolon token
        if (previous_character == ';') {
            previous_character = input->get();
            return tok_semicolon;
        }

        // if we see an equals sign, return an assignment token
        if (previous_character == '=') {
            previous_character = input->get();
            return tok_assignment;
        }

        // if we see an opening parenthesis, return the respective token
        if (previous_character == '(') { 
            previous_character = input->get();
            return tok_open_paren;
        }

        // if we see a closing parenthesis, return the respective token
        if (previous_character == ')') {
            previous_character = input->get();
            return tok_close_paren;
        }

        // if we see an opening bracket, return the respective token
        if (previous_character == '{') {
            previous_character = input->get();
            return tok_open_brack;
        }

        // if we see a closing bracket, return the respective token
        if (previous_character == '}') {
            previous_character = input->get();
            return tok_close_brack;
        }

        // if we see an opening brace, return the respective token
        if (previous_character == '[') {
            previous_character = input->get();
            return tok_open_arr;
        }

        // if we see a closing brace, return the respective token
        if (previous_character == ']') {
            previous_character = input->get();
            return tok_close_arr;
        }

        // if we see a period, return the respective token
        if (previous_character == '.') {
            previous_character = input->get();
            return tok_dot;
        }

        // if we see a comma, return the respective token
        if (previous_character == ',') {
            previous_character = input->get();
            return tok_comma;
        } 

        // if we see the EOF, return an EOF token
        if (previous_character == EOF) { 
            return tok_eof; 
        }

        // defining operators
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


        // identify comments and ignore them (also identify division)
        if (previous_character == '/') { // if the current character is a '/'...
            previous_character = input->get(); // advance to the next character in input
            if (isspace(previous_character)) {
                previous_character = input->get();
                return tok_div;
            }

            if (previous_character == '/') { // if we see a second '/'...
                do { // while the current character is not the end of file, or a newline...
                    previous_character = input->get(); // advance the current character and consume it
                } while (previous_character != '\n' && previous_character != EOF);
            }

            // dealing with multiline comments
            if (previous_character == '*') {  // if we see a '*' character
                previous_character = input->get(); //consume the '*'

                while (true) { // enter a loop that consumes tokens until we reach a multiline comment terminus
                    if (previous_character == '*') { // look for a '*' character
                        previous_character = input->get(); // consume the '*'
                        if (previous_character == '/') { // if the '*' is followed by a '/', then the comment is terminated
                            previous_character = input->get(); // consume the '/'
                            return get_token(); // call the the function recursively on the next character in the input stream
                        }
                    } else if (previous_character == '\n') { // if we see a newline character, increment the line count
                        line_count++;
                    } else if (previous_character == EOF) { // if we reach the EOF before the comment is terminated, throw an error
                        utility::lexer_error("Unterminated multiline comment", line_count);
                    }
                    previous_character = input->get(); // otherwise, just consume the character and proceed to the next one
                }
            }

            // if the system identifies the EOF, return the EOF token
            if (previous_character == EOF) {
                return tok_eof;
            }

            // if we see a newline increment the line count
            if (previous_character == '\n') {
                line_count++;
            }

            previous_character = input->get(); // consume the newline and return a comment
            return get_token(); // recurses to call the get token function on the next character 
        }

        /*
            Objective: look for keywords and separate them from unique identifiers
            Methodology: iterate over the input stream while the current character is alphanumeric, or '_' (note, the first character must be alphabetic, or '_')
        */
        if (isalpha(previous_character) || previous_character == '_') { // check  to see if the current character is alphabetic or '_'
            identifier = previous_character; // start storing characters in the identifier "buffer"
            while (isalnum(previous_character = input->get()) || (previous_character == '_')) { // while we don't encounter a space and the input is valid, consume characters...
                identifier += previous_character; // append the current character to the identifier "buffer"
            }

            /*
                If the identifier matches a keyword, match and return the respective token
                Otherwise, return an identifier token that holds the identifier value in "identifier"
            */
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

        /*
            Objective: create integer and floating point tokens
            Methodology: look for numeric characters, and '.'. Iterate until we encounter whitespace or an error (e.g. => too many '.')
        */
        if (isdigit(previous_character)) { // while the current character is a digit...
            std::string temp_num; // declare a string that stores the lexed digits
            bool is_float = false; // initialize the number to be non floating point

            do {
                temp_num += previous_character; // append the current character to the temporary storage string

                if (previous_character == '.' && is_float == true) { // if the current character is a period and we have already seen a dot in the current token...
                    utility::lexer_error("Too many decimal points passed to FP number", line_count); // throw an error and abort
                } else if (previous_character == '.') { // if we are not yet a fp number...
                    is_float = true; // set the boolean to true
                }

                previous_character = input->get(); // consume the character (digit, or '.')
            
                if (previous_character == EOF) { // if we see an EOF, then throw an error
                    utility::lexer_error("Unexpected end of input while reading a number", line_count);
                }

            }  while(isdigit(previous_character) || previous_character == '.'); // while the previous character is still a digit, or '.', it is still a number, so repeat the loop...

            if (is_float == true) { // if we have identified a float...
                float_value = strtod(temp_num.c_str(), nullptr); // convert the storage buffer into a float and return an fp token
                return tok_float_val;
            }

            integer_value = std::stoi(temp_num); // otherwise, convert the storage buffer to an int, and return an int token
            return tok_int_val;

        }

        /*
            Objective: identify strings
            Methodology: search for '"' and consume characters until we see another '"' and store the characters in between (and return a string token)
        */
        if (previous_character == '"') { // if we identify a '"'
            string_value = ""; // intialize the current value of the string
            while (true) { // enter an infinite loop (has a break condition...)
                previous_character = input->get(); // consume the current charcater (initial because must consume the '"')

                if (previous_character == '"') { // if the current character is '"' consumer it, and return a string value token
                    previous_character = input->get();
                    return tok_string_val;
                }

                if (previous_character == EOF || previous_character == ';') { // if we see a semicolon, or EOF, throw an error because we have not found an '"' to terminate the string
                    utility::lexer_error("Unterminated string", line_count);
                    break;
                }


                string_value += previous_character; // append to the value of the string as we consume characters
            }
        }

        /*
            Objective: identify characters
            Methodology: find a ''' character, consume it, store the character, and then look for a '''
        */
        if (previous_character == '\'') { // if we see a '''
            previous_character = input->get(); // consume the '''

            if (previous_character == EOF) { // if the next character is an EOF, throw an error
                utility::lexer_error("Unterminated character", line_count);
            }

            if (previous_character == '\'') { // if we see a ''', then no character has been provided, so throw an error
                 utility::lexer_error("No character provided", line_count);
            }

            char_value = previous_character; // store the character

            previous_character = input->get(); // consume the character

            if (previous_character == EOF) { // if we see an EOF, throw an error, as the character is unterminated
                utility::lexer_error("Unterminated character", line_count);
            } else if (previous_character != '\'') { // if the current character is not a ''', throw an error, as the character is unterminated
                utility::lexer_error("Unterminated character", line_count);
            }

            previous_character = input->get(); // consume the closing '''

            return tok_char_val; // return a character value token
        }

        // if the current character doesn't fit into our tokenization scheme...
        int current_character = previous_character; // store the current character for look back purposes
        previous_character = input->get(); // consume the current character
        return current_character; // return the ASCII value of the current character (this is why Token_Type stores only negative values)
    }

}