# Lexer Documentation

**This document provides a necessary overview of the variables, types, and functions used in the Pyroxene lexer, as well as their components and permitted types when applicable.**  

## Variables

<a id="line_count_md"></a>
- [`line_count`](../../include/lexer/lexer.h#line_count)  
  `int line_count;`  
  **Description**: Tracks the current line number being processed in the input stream.

<a id="token_stream_md"></a>
- [`token_stream`](../../include/lexer/lexer.h#token_stream)  
  `std::vector<Token_Type> token_stream;`  
  **Description**: A vector that stores tokens lexed from the input stream.

<a id="stored_values_md"></a>
- [`stored_values`](../../include/lexer/lexer.h#stored_values)  
  `std::vector<std::optional<lexer_stored_values>> stored_values;`  
  **Description**: A vector that stores the optional values associated with each token. Can be strings, integers, floats, characters, booleans, or `std::nullopt`.

<a id="identifier_md"></a>
- [`identifier`](../../include/lexer/lexer.h#identifier)  
  `std::string identifier;`  
  **Description**: Stores the current identifier from the input stream if we identify one.

<a id="integer_value_md"></a>
- [`integer_value`](../../include/lexer/lexer.h#integer_value)  
  `int integer_value;`  
  **Description**: Stores the current integer value from the input stream if we identify one.

<a id="float_value_md"></a>
- [`float_value`](../../include/lexer/lexer.h#float_value)  
  `float float_value;`  
  **Description**: Stores the current float value from the input stream if we identify one.

<a id="bool_value_md"></a>
- [`bool_value`](../../include/lexer/lexer.h#bool_value)  
  `bool bool_value;`  
  **Description**: Stores the current boolean value from the input stream if we identify one.

<a id="char_value_md"></a>
- [`char_value`](../../include/lexer/lexer.h#char_value)  
  `char char_value;`  
  **Description**: Stores the current character value from the input stream if we identify one.

<a id="string_value_md"></a>
- [`string_value`](../../include/lexer/lexer.h#string_value)  
  `std::string string_value;`  
  **Description**: Stores the current string value from the input stream if we identify one.

<a id="input_md"></a>
- [`input`](../../include/lexer/lexer.h#input)  
  `std::istream* input;`  
  **Description**: Pointer to the input stream (a .pyrx file).

## Types

<a id="Token_Type_md"></a>
- [`Token_Type`](../../include/lexer/lexer.h#Token_Type)  
  `enum Token_Type;`  
  **Description**: Enumeration of all possible tokens that are valid.

<a id="lexer_stored_values_md"></a>
- [`lexer_stored_values`](../../include/lexer/lexer.h#lexer_stored_values)  
  `typedef std::variant<std::string, int, float, char, bool> lexer_stored_values;`  
  **Description**: A type definition using `std::variant` to store different values associated with tokens.

## Functions

<a id="get_token_md"></a>
- [`get_token()`](../../src/lexer.cpp#get_token)  
  `Token_Type get_token();`  
  **Description**: Retrieves the next token from the input stream and updates the relevant associated value (can be `std::nullopt`).  
  **Components**:  
  - [`previous_character`](../../src/lexer.cpp#previous_character): Stores the current character in `input` that is being considered.  
  - [Whitespace](../../src/lexer.cpp#previous_character): Iterates over all whitespace and ignores it by incrementing the `previous_character`.  
  - [Individual Characters](../../src/lexer.cpp#single_character_tokens): Tokenizes all single character tokens, such as `(`, `{`, `+`, `EOF`, and others.   
  - [Comments and Division](../../src/lexer.cpp#div_and_comments): Deals with character consumption when handling comments (inline and multiline), as well as the division operator.  
  - [Keywords and Identifiers](../../src/lexer.cpp#keywords_and_identifiers): Identifies keywords such as `int` and `class`, and lexes an identifier if the input stream doesn't yield a keyword.    
  - [Integers and Floats](../../src/lexer.cpp#numbers): Parses numeric input values and lexes an int or float based on whether the input contains a `.` or not.    
  - [Strings](../../src/lexer.cpp#strings): Parses string literals.  
  - [Characters](../../src/lexer.cpp#chars): Parses character literals.  

<a id="tokenize_file"></a>
- [`tokenize_file()`](../../src/lexer.cpp#tokenize_file)  
  `void tokenize_file();`  
  **Description**: Reads the input file and populates `token_stream` and `stored_values` with the tokens and their corresponding values.  
  **Components**:  
  - [Token Stream Storage](../../src/lexer.cpp#store_tok_stream): Stores tokens in the [`token_stream`](#token_stream_md) vector.  
  - [Associated Value Storage](../../src/lexer.cpp#store_tok_values): Stores values associated with the adjacent token in the [`stored_values`](#stored_values_md) vector.


