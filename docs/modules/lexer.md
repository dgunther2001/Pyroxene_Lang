# Lexer Documentation

This document provides an overview of the variables, types, and functions used in the Pyroxene lexer.

## Variables

- [Jump to `line_count`](../../include/lexer/lexer.h#line_count)  
  `int line_count;`  
  **Description**: Tracks the current line number being processed in the input stream.

- [Jump to `token_stream`](../../include/lexer/lexer.h#token_stream)  
  `std::vector<Token_Type> token_stream;`  
  **Description**: A vector that stores the sequence of tokens identified in the input stream.

- [Jump to `stored_values`](../../include/lexer/lexer.h#stored_values)  
  `std::vector<std::optional<lexer_stored_values>> stored_values;`  
  **Description**: A vector that stores the optional values associated with each token. These values can be strings, integers, floats, characters, or booleans.

- [Jump to `identifier`](../../include/lexer/lexer.h#identifier)  
  `std::string identifier;`  
  **Description**: Stores the current identifier token if identified in the input stream.

- [Jump to `integer_value`](../../include/lexer/lexer.h#integer_value)  
  `int integer_value;`  
  **Description**: Stores the current integer value token if identified in the input stream.

- [Jump to `float_value`](../../include/lexer/lexer.h#float_value)  
  `float float_value;`  
  **Description**: Stores the current float value token if identified in the input stream.

- [Jump to `bool_value`](../../include/lexer/lexer.h#bool_value)  
  `bool bool_value;`  
  **Description**: Stores the current boolean value token if identified in the input stream.

- [Jump to `char_value`](../../include/lexer/lexer.h#char_value)  
  `char char_value;`  
  **Description**: Stores the current character value token if identified in the input stream.

- [Jump to `string_value`](../../include/lexer/lexer.h#string_value)  
  `std::string string_value;`  
  **Description**: Stores the current string value token if identified in the input stream.

- [Jump to `input`](../../include/lexer/lexer.h#input)  
  `std::istream* input;`  
  **Description**: Pointer to the input stream from which the lexer reads data.

- [Jump to `cur_tok_int_val`](../../include/lexer/lexer.h#cur_tok_int_val)  
  `bool cur_tok_int_val;`  
  **Description**: Flag indicating whether the current token is an integer.

- [Jump to `cur_tok_float_val`](../../include/lexer/lexer.h#cur_tok_float_val)  
  `bool cur_tok_float_val;`  
  **Description**: Flag indicating whether the current token is a float.

- [Jump to `cur_tok_char_val`](../../include/lexer/lexer.h#cur_tok_char_val)  
  `bool cur_tok_char_val;`  
  **Description**: Flag indicating whether the current token is a character.

- [Jump to `cur_tok_string_val`](../../include/lexer/lexer.h#cur_tok_string_val)  
  `bool cur_tok_string_val;`  
  **Description**: Flag indicating whether the current token is a string.

- [Jump to `cur_tok_bool_val`](../../include/lexer/lexer.h#cur_tok_bool_val)  
  `bool cur_tok_bool_val;`  
  **Description**: Flag indicating whether the current token is a boolean.

## Types

- [Jump to `Token_Type`](../../include/lexer/lexer.h#Token_Type)  
  `enum Token_Type`  
  **Description**: Enumeration defining the various types of tokens that can be identified by the lexer.

- [Jump to `lexer_stored_values`](../../include/lexer/lexer.h#lexer_stored_values)  
  `typedef std::variant<std::string, int, float, char, bool> lexer_stored_values;`  
  **Description**: A type definition using `std::variant` to store different possible values associated with tokens, such as strings, integers, floats, characters, and booleans.

## Functions

- [Jump to `get_token`](../../include/lexer/lexer.h#get_token)  
  `Token_Type get_token();`  
  **Description**: Retrieves the next token from the input stream and updates the relevant variables and flags.

- [Jump to `tokenize_file`](../../include/lexer/lexer.h#tokenize_file)  
  `void tokenize_file();`  
  **Description**: Reads the input file and populates `token_stream` and `stored_values` with the tokens and their corresponding values.
