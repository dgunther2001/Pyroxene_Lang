/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.txt file in the docs directory.
If LICENSE.txt is not included, this version of the source code is provided in breach of this license.
*/

#ifndef AST_H
#define AST_H

#include "llvm/IR/Value.h"
#include <memory>
#include <string>

/*
    Expression AST Nodes needed:
        1. Top level for every expression to extend from DONE
        2. Expressions of a single iidentifier DONE
        3. Binary expressions DONE
        4. Literal expressions (int; float; char; string; bool) DONE
        5. Function calls
*/
class top_level_expr {
public:
    virtual ~top_level_expr() = default;

    virtual const std::string& get_expr_type() const;
    virtual llvm::Value* codegen() = 0;
};

class binary_expr : public top_level_expr {
private: 
    char op;
    std::unique_ptr<top_level_expr> left, right;
    std::string type;

public:
    binary_expr(char op, std::unique_ptr<top_level_expr> left, std::unique_ptr<top_level_expr> right, const std::string& type) :
        op(op),
        left(std::move(left)),
        right(std::move(right)),
        type(type)
        {}

    const std::string& get_expr_type() const {return type;}
    virtual llvm::Value* codegen();
};

class identifier_expr : public top_level_expr {
private:
    std::string identifier_name;
    std::string type;

public:
    identifier_expr(const std::string& identifier_name, const std::string& type) :
        identifier_name(identifier_name),
        type(type)
        {}
    const std::string& get_identifier_name() const {return identifier_name;}
    const std::string& get_expr_type() const {return type;}
    virtual llvm::Value* codegen();

};

class integer_expression : public top_level_expr {
private:
    int held_value;
    std::string type = "int";

public:
    integer_expression(int held_value) : held_value(held_value) {}
    const int get_value() const {return held_value;}
    virtual llvm::Value* codegen();
};

class float_expression : public top_level_expr {
private:
    float held_value;
    std::string type = "float";

public:
    float_expression(float held_value) : held_value(held_value) {}
    const float get_value() const {return held_value;}
    virtual llvm::Value* codegen();
};

class char_expression : public top_level_expr {
private:
    char held_value;
    std::string type = "char";

public:
    char_expression(char held_value) : held_value(held_value) {}
    const char get_value() const {return held_value;}
    virtual llvm::Value* codegen();
};

class string_expression : public top_level_expr {
private:
    std::string held_value;
    std::string type = "string";

public:
    string_expression(std::string held_value) : held_value(held_value) {}
    const std::string& get_value() const {return held_value;}
    virtual llvm::Value* codegen();
};

class bool_expression : public top_level_expr {
private:
    bool held_value;
    std::string type = "bool";

public:
    bool_expression(bool held_value) : held_value(held_value) {}
    const bool get_value() const {return held_value;}
    virtual llvm::Value* codegen();
};

class func_call_expr : public top_level_expr {
// TODO

public:
    virtual llvm::Value* codegen();
};




/*
    Variable declaration, definition, and assignment
        1. Declaration DONE
        2. Definition DONE
        3. Assignment IP
*/
class variable_declaration : top_level_expr {
private:
    std::string type;
    std::string identifier_name;

public:
    variable_declaration(const std::string& type, const std::string& identifier_name) :
        type(type),
        identifier_name(identifier_name)
        {}
    const std::string& get_type() const {return type;} 
    const std::string& get_name() const {return identifier_name;}
    virtual llvm::Value* codegen();
};

class variable_definition : top_level_expr {
private:
    std::string type;
    std::string identifier_name;
    std::unique_ptr<top_level_expr> assigned_value;

public:
    variable_definition(const std::string& type, const std::string& identifier_name, std::unique_ptr<top_level_expr> assigned_value) :
        type(type),
        identifier_name(identifier_name),
        assigned_value(std::move(assigned_value))
        {}
    
    const std::string& get_type() const {return type;} 
    const std::string& get_name() const {return identifier_name;}
    virtual llvm::Value* codegen();
};

class variable_assignment : top_level_expr {
private:
    std::string type; // maybe remove as i want to do type resolution later
    std::string identifier_name;
    std::unique_ptr<top_level_expr> assigned_value;

public:
    variable_assignment(const std::string& type, const std::string& identifier_name, std::unique_ptr<top_level_expr> assigned_value) :
        type(type),
        identifier_name(identifier_name),
        assigned_value(std::move(assigned_value))
        {}
    const std::string& get_type() const {return type;} 
    const std::string& get_name() const {return identifier_name;}
    virtual llvm::Value* codegen();
};

#endif