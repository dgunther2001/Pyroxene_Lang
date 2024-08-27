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
#include <vector>

/*
    Expression AST Nodes needed:
        1. Top level for every expression to extend from DONE
        2. Expressions of a single iidentifier DONE
        3. Binary expressions DONE
        4. Literal expressions (int; float; char; string; bool) DONE
        5. Function calls
*/

namespace ast {
    typedef enum {
        int_type = -1,
        float_type = -2,
        char_type = -3,
        string_type = -4,
        bool_type = -5
    } types;

    extern std::string get_type_as_string(types type);

    class top_level_expr {
    public:
        virtual ~top_level_expr() = default;
        //virtual llvm::Value* codegen() = 0;
    };

    class func_defn {
    private:
        types return_type;
        std::string func_name;
        std::vector<std::unique_ptr<top_level_expr>> expressions;
        std::unique_ptr<top_level_expr> return_expr;
    public:
        ~func_defn() = default;
        //llvm::Value* codegen() = 0;
    };

    class binary_expr : public top_level_expr {
    private: 
        char op;
        std::unique_ptr<top_level_expr> left, right;
        types type;

    public:
        binary_expr(char op, std::unique_ptr<top_level_expr> left, std::unique_ptr<top_level_expr> right, types type) :
            op(op),
            left(std::move(left)),
            right(std::move(right)),
            type(type)
            {}

        const types get_expr_type() const {return type;}
        //llvm::Value* codegen() override;
    };

    class identifier_expr : public top_level_expr {
    private:
        std::string identifier_name;
        types type;

    public:
        identifier_expr(const std::string& identifier_name, types type) :
            identifier_name(identifier_name),
            type(type)
            {}
        const std::string& get_identifier_name() const {return identifier_name;}
        const types get_expr_type() const {return type;}
        //llvm::Value* codegen() override;

    };

    class integer_expression : public top_level_expr {
    private:
        int held_value;
        types type = int_type;

    public:
        integer_expression(int held_value) : held_value(held_value) {}
        const int get_value() const {return held_value;}
        //llvm::Value* codegen() override;
    };

    class float_expression : public top_level_expr {
    private:
        float held_value;
        types type = float_type;

    public:
        float_expression(float held_value) : held_value(held_value) {}
        const float get_value() const {return held_value;}
        //llvm::Value* codegen() override;
    };

    class char_expression : public top_level_expr {
    private:
        char held_value;
        types type = char_type;

    public:
        char_expression(char held_value) : held_value(held_value) {}
        const char get_value() const {return held_value;}
        //llvm::Value* codegen() override;
    };

    class string_expression : public top_level_expr {
    private:
        std::string held_value;
        types type = string_type;

    public:
        string_expression(std::string held_value) : held_value(held_value) {}
        const std::string& get_value() const {return held_value;}
        //llvm::Value* codegen() override;
    };

    class bool_expression : public top_level_expr {
    private:
        bool held_value;
        types type = bool_type;

    public:
        bool_expression(bool held_value) : held_value(held_value) {}
        const bool get_value() const {return held_value;}
        //llvm::Value* codegen() override;
    };

    class func_call_expr : public top_level_expr {
    // TODO

    public:
        //llvm::Value* codegen() override;
    };




    /*
        Variable declaration, definition, and assignment
            1. Declaration DONE
            2. Definition DONE
            3. Assignment IP
    */
    class variable_declaration : public top_level_expr {
    private:
        types type;
        std::string identifier_name;

    public:
        variable_declaration(types var_type, const std::string& identifier_name) :
            type(var_type),
            identifier_name(identifier_name)
            {}
        const types get_expr_type() const {return type;} 
        const std::string& get_name() const {return identifier_name;}
        //llvm::Value* codegen() override;
    };

    class variable_definition : public top_level_expr {
    private:
        types type;
        std::string identifier_name;
        std::unique_ptr<top_level_expr> assigned_value;

    public:
        variable_definition(types var_type, const std::string& identifier_name, std::unique_ptr<top_level_expr> assigned_value) :
            type(var_type),
            identifier_name(identifier_name),
            assigned_value(std::move(assigned_value))
            {}
        
        const types get_expr_type() const {return type;} 
        const std::string& get_name() const {return identifier_name;}
        //llvm::Value* codegen() override;
    };

    class variable_assignment : top_level_expr {
    private:
        types type; // maybe remove as i want to do type resolution later
        std::string identifier_name;
        std::unique_ptr<top_level_expr> assigned_value;

    public:
        variable_assignment(types var_type, const std::string& identifier_name, std::unique_ptr<top_level_expr> assigned_value) :
            type(var_type),
            identifier_name(identifier_name),
            assigned_value(std::move(assigned_value))
            {}
        const types get_expr_type() const {return type;} 
        const std::string& get_name() const {return identifier_name;}
        //llvm::Value* codegen() override;
    };

}

#endif