/*
MIT License
Copyright (c) 2024 Daniel Gunther

For the full license text, see the LICENSE.md file in the root directory.
If LICENSE.md is not included, this version of the source code is provided in breach of this license.
*/


// MUST DO
    // 1. actually fill in parse_expression()
    // 2. figure out types in var_assignment

#ifndef AST_H
#define AST_H

#include "llvm/IR/Value.h"
#include "../lexer/lexer.h"
#include "../include/types/types.h"
#include <memory>
#include <string>
#include <vector>
#include <set>


namespace ast {

    /**
     * @par This is an abstract class that all expression type AST nodes fall under.
     * @code
     *  class top_level_expr {
        public:
            virtual ~top_level_expr() = default;
            //virtual void debug_output();
            virtual llvm::Value* codegen() = 0;
            virtual std::string get_ast_class() const {
                return "top";
            }

            virtual type_enum::types get_expr_type() const { // PLACEHOLDER
                return type_enum::types::float_type;
            }

            virtual std::string get_name() const {
                return ""; 
            }

            virtual void semantic_analysis() {}

            virtual bool is_elif() { return false; }
            virtual std::unique_ptr<top_level_expr> grab_else_if() { return nullptr; }

            virtual llvm::BasicBlock* get_merge_block() { return nullptr; }
            virtual void set_merge_block(llvm::BasicBlock* new_merge_block) {}
        };
     * @endcode
     */
    class top_level_expr {
    public:
        virtual ~top_level_expr() = default;
        //virtual void debug_output();
        virtual llvm::Value* codegen() = 0;
        virtual std::string get_ast_class() const {
            return "top";
        }

        virtual void set_expr_type(type_enum::types new_type) {}

        virtual type_enum::types get_expr_type() const { // PLACEHOLDER
            return type_enum::types::float_type;
        }

        virtual std::string get_name() const {
            return ""; 
        }

        virtual void semantic_analysis() {}

        virtual bool is_elif() { return false; }
        virtual std::unique_ptr<top_level_expr> grab_else_if() { return nullptr; }
        virtual llvm::BasicBlock* get_merge_block() { return nullptr; }
        virtual void set_merge_block(llvm::BasicBlock* new_merge_block) {}
        virtual type_enum::types get_obj_type() const { return type_enum::float_type; }
    };

    /**
     * @par This class holds the data related to function definitions.
     * @code
        class func_defn {
        private:
            type_enum::types return_type;
            std::string func_name;
            std::vector<std::unique_ptr<top_level_expr>> expressions;
            std::vector<std::unique_ptr<top_level_expr>>parameters;
        public:
            func_defn(type_enum::types return_type, std::string name, std::vector<std::unique_ptr<top_level_expr>> expressions, std::vector<std::unique_ptr<top_level_expr>> parameters) :
                return_type(return_type),
                func_name(name),
                expressions(std::move(expressions)),
                parameters(std::move(parameters))
                {}

            void semantic_analysis();
            ~func_defn() = default;
            void debug_output();
            llvm::Value* codegen();
            type_enum::types get_return_type() {return return_type;}
    };
     * @endcode
     */
    class func_defn {
    private:
        type_enum::types return_type;
        std::string func_name;
        std::vector<std::unique_ptr<top_level_expr>> expressions;
        std::vector<std::unique_ptr<top_level_expr>>parameters;
    public:
        func_defn(type_enum::types return_type, 
            std::string name, 
            std::vector<std::unique_ptr<top_level_expr>> expressions, 
            std::vector<std::unique_ptr<top_level_expr>> parameters
        ) :
            return_type(return_type),
            func_name(name),
            expressions(std::move(expressions)),
            parameters(std::move(parameters))
        {}

        void semantic_analysis();
        ~func_defn() = default;
        void debug_output();
        llvm::Value* codegen();
        type_enum::types get_return_type() {return return_type;}
    };

    /**
     * @par This parses binary expressions in a way that deals with operator precedence, and potentially infinite nesting.
     * 
     * @code
        class binary_expr : public top_level_expr {
        private: 
            lexer::Token_Type op;
            std::unique_ptr<top_level_expr> left, right;
            type_enum::types type;

        public:
            binary_expr(lexer::Token_Type op, std::unique_ptr<top_level_expr> left, std::unique_ptr<top_level_expr> right) :
                op(op),
                left(std::move(left)),
                right(std::move(right)),
                {}
            
            void semantic_analysis() override;
            std::string get_ast_class() const override { return "binary"; }
            type_enum::types get_expr_type() const override {return type;}
            void set_expr_type(type_enum::types new_type) override { type = new_type; }
            void debug_output();
            char get_op() { 
                switch (op) {
                    case lexer::tok_plus:
                        return '+';
                        break;
                    case lexer::tok_minus:
                        return '-';
                        break;
                    case lexer::tok_mult:
                        return '*';
                        break;
                    case lexer::tok_div:
                        return '/';
                        break;
                    default:
                        std::abort();
                }
            }
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class binary_expr : public top_level_expr {
    private: 
        lexer::Token_Type op;
        std::unique_ptr<top_level_expr> left, right;
        type_enum::types type;

    public:
        binary_expr(lexer::Token_Type op, std::unique_ptr<top_level_expr> left, std::unique_ptr<top_level_expr> right) :
            op(op),
            left(std::move(left)),
            right(std::move(right))
            {}
        
        void semantic_analysis() override;
        std::string get_ast_class() const override { return "binary"; }
        type_enum::types get_expr_type() const override {return type;}
        void set_expr_type(type_enum::types new_type) override { type = new_type; }
        void debug_output();
        char get_op() { 
            switch (op) {
                case lexer::tok_plus:
                    return '+';
                    break;
                case lexer::tok_minus:
                    return '-';
                    break;
                case lexer::tok_mult:
                    return '*';
                    break;
                case lexer::tok_div:
                    return '/';
                    break;
                default:
                    std::abort();
            }
         }
        llvm::Value* codegen() override;
    };

    /**
     * @par Stores primary expressions made up of a single identifier (defined variable).
     * 
     * @code
        class identifier_expr : public top_level_expr {
        private:
            std::string identifier_name;
            type_enum::types type;
            bool is_global;

        public:
            identifier_expr(const std::string& identifier_name) :
                identifier_name(identifier_name)
                {}
            
            void set_is_global(bool global) {is_global = global;}
            bool get_is_global() {return is_global;}
            void semantic_analysis() override;
            std::string get_ast_class() const override { return "identifier"; }   
            void set_expr_type(type_enum::types new_type) override { type = new_type; }
            type_enum::types get_expr_type() const override {return type;}
            std::string get_name() const override {return identifier_name;}
            void debug_output();
            llvm::Value* codegen() override;

        };
     * @endcode
     */
    class identifier_expr : public top_level_expr {
    private:
        std::string identifier_name;
        type_enum::types type;
        bool is_global;

    public:
        identifier_expr(const std::string& identifier_name) :
            identifier_name(identifier_name)
            {}

        void set_is_global(bool global) {is_global = global;}
        bool get_is_global() {return is_global;}
        void semantic_analysis() override;
        std::string get_ast_class() const override { return "identifier"; }   
        void set_expr_type(type_enum::types new_type) override { type = new_type; }
        type_enum::types get_expr_type() const override {return type;}
        std::string get_name() const override {return identifier_name;}
        void debug_output();
        llvm::Value* codegen() override;

    };

    /**
     * @par Stores expressions of a single integer literal.
     * 
     * @code
        class integer_expression : public top_level_expr {
        private:
            int held_value;
            type_enum::types type = type_enum::int_type;

        public:
            integer_expression(int held_value) : held_value(held_value) {}
            std::string get_ast_class() const override { return "int"; }
            const int get_value() const {return held_value;}
            void debug_output();
            type_enum::types get_expr_type() const override {return type;}
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class integer_expression : public top_level_expr {
    private:
        int held_value;
        type_enum::types type = type_enum::int_type;

    public:
        integer_expression(int held_value) : held_value(held_value) {}
        std::string get_ast_class() const override { return "int"; }
        const int get_value() const {return held_value;}
        void debug_output();
        type_enum::types get_expr_type() const override {return type;}
        llvm::Value* codegen() override;
    };

    /**
     * @par Stores expressions of a single float literal.
     * 
     * @code
        class float_expression : public top_level_expr {
        private:
            float held_value;
            type_enum::types type = type_enum::float_type;

        public:
            float_expression(float held_value) : held_value(held_value) {}
            std::string get_ast_class() const override { return "float"; }
            const float get_value() const {return held_value;}
            void debug_output();
            type_enum::types get_expr_type() const override {return type;}
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class float_expression : public top_level_expr {
    private:
        float held_value;
        type_enum::types type = type_enum::float_type;

    public:
        float_expression(float held_value) : held_value(held_value) {}
        std::string get_ast_class() const override { return "float"; }
        const float get_value() const {return held_value;}
        void debug_output();
        type_enum::types get_expr_type() const override {return type;}
        llvm::Value* codegen() override;
    };

    /**
     * @par Stores expressions of a single character literal.
     * 
     * @code
        class char_expression : public top_level_expr {
        private:
            char held_value;
            type_enum::types type = type_enum::char_type;

        public:
            char_expression(char held_value) : held_value(held_value) {}
            std::string get_ast_class() const override { return "char"; }
            const char get_value() const {return held_value;}
            void debug_output();
            type_enum::types get_expr_type() const override {return type;}
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class char_expression : public top_level_expr {
    private:
        char held_value;
        type_enum::types type = type_enum::char_type;

    public:
        char_expression(char held_value) : held_value(held_value) {}
        std::string get_ast_class() const override { return "char"; }
        const char get_value() const {return held_value;}
        void debug_output();
        type_enum::types get_expr_type() const override {return type;}
        llvm::Value* codegen() override;
    };

    /**
     * @par Stores expressions of a single string literal.
     * 
     * @code
        class string_expression : public top_level_expr {
        private:
            std::string held_value;
            type_enum::types type = type_enum::string_type;

        public:
            string_expression(std::string held_value) : held_value(held_value) {}
            std::string get_ast_class() const override { return "string"; }
            const std::string& get_value() const {return held_value;}
            void debug_output();
            type_enum::typess get_expr_type() const override {return type;}
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class string_expression : public top_level_expr {
    private:
        std::string held_value;
        type_enum::types type = type_enum::string_type;

    public:
        string_expression(std::string held_value) : held_value(held_value) {}
        std::string get_ast_class() const override { return "string"; }
        const std::string& get_value() const {return held_value;}
        void debug_output();
        type_enum::types get_expr_type() const override {return type;}
        llvm::Value* codegen() override;
    };

    /**
     * @par Stores expressions of a single boolean literal.
     * 
     * @code 
        class bool_expression : public top_level_expr {
        private:
            bool held_value;
            type_enum::types type = bool_type;

        public:
            bool_expression(bool held_value) : held_value(held_value) {}
            std::string get_ast_class() const override { return "bool"; }
            const bool get_value() const {return held_value;}
            void debug_output();
            type_enum::types get_expr_type() const override {return type;}
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class bool_expression : public top_level_expr {
    private:
        bool held_value;
        type_enum::types type = type_enum::bool_type;

    public:
        bool_expression(bool held_value) : held_value(held_value) {}
        std::string get_ast_class() const override { return "bool"; }
        const bool get_value() const {return held_value;}
        void debug_output();
        type_enum::types get_expr_type() const override {return type;}
        llvm::Value* codegen() override;
    };

    /*
    class func_call_expr : public top_level_expr {
    // TODO

    public:
        //llvm::Value* codegen() override;
    };
    */


   /**
    * @par Stores variable declarations (e.g. => int my_var;).
    * 
    * @code
        class variable_declaration : public top_level_expr {
        private:
            type_enum::types type;
            std::string identifier_name;
            bool is_global;

        public:
            variable_declaration(type_enum::types var_type, const std::string& identifier_name) :
                type(var_type),
                identifier_name(identifier_name)
                {}
            void set_is_global(bool global) {is_global = global;}
            bool get_is_global() {return is_global;}
            void semantic_analysis() override;
            std::string get_ast_class() const override { return "var_decl"; }
            type_enum::types get_expr_type() const override {return type;} 
            std::string get_name() const override {return identifier_name;}
            void debug_output();
            llvm::Value* codegen() override;
        };
    * @endcode
    */
    class variable_declaration : public top_level_expr {
    private:
        type_enum::types type;
        std::string identifier_name;
        bool is_global;

    public:
        variable_declaration(type_enum::types var_type, const std::string& identifier_name) :
            type(var_type),
            identifier_name(identifier_name)
            {}
        void set_is_global(bool global) {is_global = global;}
        bool get_is_global() {return is_global;}
        void semantic_analysis() override;
        std::string get_ast_class() const override { return "var_decl"; }
        type_enum::types get_expr_type() const override {return type;} 
        std::string get_name() const override {return identifier_name;}
        void debug_output();
        llvm::Value* codegen() override;
    };

    /**
     * @par Stores variable definitions (e.g. => int my_var = 7;).
     * 
     * @code
        class variable_definition : public top_level_expr {
        private:
            type_enum::types type;
            std::string identifier_name;
            std::unique_ptr<top_level_expr> assigned_value;
            bool is_global;

        public:
            variable_definition(type_enum::types var_type, const std::string& identifier_name, std::unique_ptr<top_level_expr> assigned_value) :
                type(var_type),
                identifier_name(identifier_name),
                assigned_value(std::move(assigned_value))
                {}
            void set_is_global(bool global) {is_global = global;}
            bool get_is_global() {return is_global;}
            void semantic_analysis() override;
            std::string get_ast_class() const override { return "var_defn"; }
            type_enum::types get_expr_type() const override {return type;} 
            std::string get_name() const override {return identifier_name;}
            void debug_output();
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class variable_definition : public top_level_expr {
    private:
        type_enum::types type;
        std::string identifier_name;
        std::unique_ptr<top_level_expr> assigned_value;
        bool is_global;

    public:
        variable_definition(type_enum::types var_type, const std::string& identifier_name, std::unique_ptr<top_level_expr> assigned_value) :
            type(var_type),
            identifier_name(identifier_name),
            assigned_value(std::move(assigned_value))
            {}
        
        void set_is_global(bool global) {is_global = global;}
        bool get_is_global() {return is_global;}
        void semantic_analysis() override;
        std::string get_ast_class() const override { return "var_defn"; }
        type_enum::types get_expr_type() const override {return type;} 
        std::string get_name() const override {return identifier_name;}
        void debug_output();
        llvm::Value* codegen() override;
    };

    /**
     * @par Holds reassignments of predefined/declared variables (e.g. my_var = 6;).
     * 
     * @code
        class variable_assignment : public top_level_expr {
        private:
            std::string identifier_name;
            std::unique_ptr<top_level_expr> assigned_value;
            bool is_global;

        public:
            variable_assignment(type_enum::types var_type, const std::string& identifier_name, std::unique_ptr<top_level_expr> assigned_value) :
                identifier_name(identifier_name),
                assigned_value(std::move(assigned_value))
                {}

            void set_is_global(bool global) {is_global = global;}
            bool get_is_global() {return is_global;}
            void semantic_analysis() override;
            std::string get_ast_class() const override { return "var_assign"; }
            std::string get_name() const override {return identifier_name;}
            void debug_output();
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class variable_assignment : public top_level_expr {
    private:
        std::string identifier_name;
        std::unique_ptr<top_level_expr> assigned_value;
        bool is_global;

    public:
        variable_assignment(const std::string& identifier_name, std::unique_ptr<top_level_expr> assigned_value) :
            identifier_name(identifier_name),
            assigned_value(std::move(assigned_value))
            {}

        void set_is_global(bool global) {is_global = global;}
        bool get_is_global() {return is_global;}
        void semantic_analysis() override;
        std::string get_ast_class() const override { return "var_assign"; }
        std::string get_name() const override {return identifier_name;}
        void debug_output();
        llvm::Value* codegen() override;
    };

    /**
     * @par This class holds data related to return expressions.
     * @code
        class return_expr : public top_level_expr {
        private:
            std::unique_ptr<top_level_expr> returned_value;
            type_enum::types type;
        public:
            return_expr(std::unique_ptr<top_level_expr> return_val) : 
                returned_value(std::move(return_val)) 
                {}
            void semantic_analysis() override;
            type_enum::types get_expr_type() const override {return type;} 
            void set_expr_type(type_enum::types new_type) override { type = new_type; }
            std::string get_ast_class() const override { return "return"; }
            void debug_output();
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class return_expr : public top_level_expr {
    private:
        std::unique_ptr<top_level_expr> returned_value;
        type_enum::types type;
    
    public:
        return_expr(std::unique_ptr<top_level_expr> return_val) : 
            returned_value(std::move(return_val)) 
            {}
        void semantic_analysis() override;
        type_enum::types get_expr_type() const override {return type;} 
        void set_expr_type(type_enum::types new_type) override { type = new_type; }
        std::string get_ast_class() const override { return "return"; }
        void debug_output();
        llvm::Value* codegen() override;
    };

    /**
     * @par Holds all data held within if blocks.
     * @code
     *  class if_expr : public top_level_expr {
        private:
            std::unique_ptr<top_level_expr> condition;
            std::vector<std::unique_ptr<top_level_expr>> expressions;
            std::unique_ptr<top_level_expr> else_stmt;
        
        public:
            if_expr(std::unique_ptr<top_level_expr> condition, std::vector<std::unique_ptr<top_level_expr>> expressions, std::unique_ptr<top_level_expr> else_stmt) :
                condition(std::move(condition)),
                expressions(std::move(expressions)),
                else_stmt(std::move(else_stmt))
                {}
            void semantic_analysis() override;
            std::string get_ast_class() const override { return "if"; }
            void debug_output();
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class if_expr : public top_level_expr {
    private:
        std::unique_ptr<top_level_expr> condition;
        std::vector<std::unique_ptr<top_level_expr>> expressions;
        std::unique_ptr<top_level_expr> else_stmt;
        llvm::BasicBlock* merge_block;
    
    public:
        if_expr(std::unique_ptr<top_level_expr> condition, std::vector<std::unique_ptr<top_level_expr>> expressions, std::unique_ptr<top_level_expr> else_stmt) :
            condition(std::move(condition)),
            expressions(std::move(expressions)),
            else_stmt(std::move(else_stmt))
            {}
        void semantic_analysis() override;
        std::string get_ast_class() const override { return "if"; }
        void debug_output();
        llvm::Value* codegen() override;
        llvm::BasicBlock* get_merge_block() override { return merge_block; }
        void set_merge_block(llvm::BasicBlock* new_merge_block) override { merge_block = new_merge_block; }
    };

    /**
     * @par Contains data related to else expressions (can be elifs).
     * @code
        class else_expr : public top_level_expr {
        private:
            std::vector<std::unique_ptr<top_level_expr>> expressions;
            bool is_else_if;
        
        public:
            else_expr(std::vector<std::unique_ptr<top_level_expr>> expressions, bool is_else_if) :
                expressions(std::move(expressions)),
                is_else_if(is_else_if)
                {}
            void semantic_analysis() override;
            std::string get_ast_class() const override { return "else"; }
            void debug_output();
            llvm::Value* codegen() override;
            bool is_elif() override { return is_else_if; }
            std::unique_ptr<top_level_expr> grab_else_if() override { return std::move(expressions.at(0)); }

        };
     * @endcode
     */
    class else_expr : public top_level_expr {
    private:
        std::vector<std::unique_ptr<top_level_expr>> expressions;
        bool is_else_if;
    
    public:
        else_expr(std::vector<std::unique_ptr<top_level_expr>> expressions, bool is_else_if) :
            expressions(std::move(expressions)),
            is_else_if(is_else_if)
            {}
        void semantic_analysis() override;
        std::string get_ast_class() const override { return "else"; }
        void debug_output();
        llvm::Value* codegen() override;
        bool is_elif() override { return is_else_if; }
        std::unique_ptr<top_level_expr> grab_else_if() override { return std::move(expressions.at(0)); }

    };

    /**
     * @par For loops.
     * @code
        class for_expr : public top_level_expr {
        private:
            std::vector<std::unique_ptr<top_level_expr>> expressions;
            std::unique_ptr<ast::top_level_expr> variable_defn;
            std::unique_ptr<ast::top_level_expr> condition;
            std::unique_ptr<ast::top_level_expr> var_modification;

        public:
            for_expr(std::vector<std::unique_ptr<top_level_expr>> expressions, 
                std::unique_ptr<ast::top_level_expr> variable_defn,
                std::unique_ptr<ast::top_level_expr> condition,
                std::unique_ptr<ast::top_level_expr> var_modification) :
                expressions(std::move(expressions)),
                variable_defn(std::move(variable_defn)),
                condition(std::move(condition)),
                var_modification(std::move(var_modification))
                {}
            void semantic_analysis() override;
            std::string get_ast_class() const override { return "for"; }
            void debug_output();
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class for_expr : public top_level_expr {
    private:
        std::vector<std::unique_ptr<top_level_expr>> expressions;
        std::unique_ptr<ast::top_level_expr> variable_defn;
        std::unique_ptr<ast::top_level_expr> condition;
        std::unique_ptr<ast::top_level_expr> var_modification;

    public:
        for_expr(std::vector<std::unique_ptr<top_level_expr>> expressions, 
            std::unique_ptr<ast::top_level_expr> variable_defn,
            std::unique_ptr<ast::top_level_expr> condition,
            std::unique_ptr<ast::top_level_expr> var_modification) :
            expressions(std::move(expressions)),
            variable_defn(std::move(variable_defn)),
            condition(std::move(condition)),
            var_modification(std::move(var_modification))
            {}
        void semantic_analysis() override;
        std::string get_ast_class() const override { return "for"; }
        void debug_output();
        llvm::Value* codegen() override;
    };

    /**
     * @par Holds all data in a function call.
     * @code
        class func_call_expr : public top_level_expr {
        private:
            std::string func_name;
            std::vector<std::unique_ptr<top_level_expr>> arguments;
            type_enum::types type;

        public:
            func_call_expr(std::string func_name, std::vector<std::unique_ptr<top_level_expr>> args) :
                func_name(func_name),
                arguments(std::move(args))
                {}
            void semantic_analysis() override;
            type_enum::types get_expr_type() const override {return type;}
            void set_expr_type(type_enum::types new_type) override { type = new_type; }
            std::string get_ast_class() const override { return "func_call"; }
            void debug_output();
            llvm::Value* codegen() override;

        };
     * @endcode
     */
    class func_call_expr : public top_level_expr {
    private:
        std::string func_name;
        std::vector<std::unique_ptr<top_level_expr>> arguments;
        type_enum::types type;

    public:
        func_call_expr(std::string func_name, std::vector<std::unique_ptr<top_level_expr>> args) :
            func_name(func_name),
            arguments(std::move(args))
            {}
        void semantic_analysis() override;
        type_enum::types get_expr_type() const override {return type;}
        void set_expr_type(type_enum::types new_type) override { type = new_type; }
        std::string get_ast_class() const override { return "func_call"; }
        void debug_output();
        llvm::Value* codegen() override;

    };

    /**
     * @par Holds data related to print expressions.
     * 
     * @code
        class print_expr : public top_level_expr {
        private:
            std::unique_ptr<top_level_expr> expression;

        public:
            print_expr(std::unique_ptr<top_level_expr> expression) :
                expression(std::move(expression))
                {}
            void semantic_analysis() override; 
            std::string get_ast_class() const override { return "print"; }
            void debug_output();
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class print_expr : public top_level_expr {
    private:
        std::unique_ptr<top_level_expr> expression;

    public:
        print_expr(std::unique_ptr<top_level_expr> expression) :
            expression(std::move(expression))
            {}
        void semantic_analysis() override; 
        std::string get_ast_class() const override { return "print"; }
        void debug_output();
        llvm::Value* codegen() override;
    };

    /**
     * @par Holds data related to a graph expression.
     * @code
        class graph_decl_expr : public top_level_expr {
        private:
            type_enum::types type;
            std::string graph_name;

        public:
            else_expr(type_enum::types type, std::string graph_name) :
                type(type),
                name(name)
                {}
            void semantic_analysis() override;
            std::string get_ast_class() const override { return "graph_decl"; }
            void debug_output();
            llvm::Value* codegen() override;
            type_enum::types get_expr_type() const override {return type;}
        };
     * @endcode
     */
    class graph_decl_expr : public top_level_expr {
    private:
        type_enum::types type;
        std::string graph_name;

    public:
        graph_decl_expr(type_enum::types type, std::string graph_name) :
            type(type),
            graph_name(graph_name)
            {}
        void semantic_analysis() override;
        std::string get_ast_class() const override { return "graph_decl"; }
        void debug_output();
        llvm::Value* codegen() override;
        type_enum::types get_expr_type() const override {return type;}
    };

    /**
     * TODO: docs
     */
    class list_decl : public top_level_expr {
    private:
        type_enum::types type;
        std::string name;
    
    public:
        list_decl(type_enum::types type, std::string name) :
            type(type),
            name(name)
            {}
        void semantic_analysis() override;
        std::string get_ast_class() const override { return "list_decl"; }
        void debug_output();
        llvm::Value* codegen() override;
        type_enum::types get_expr_type() const override {return type;}
    };
    

    /**
     * TODO: docs
     */
    class method_dot_call : public top_level_expr {
    private:
        std::string item_name;
        std::string called;
        type_enum::types obj_type;
        type_enum::types type;
        bool is_class;
        std::vector<std::unique_ptr<top_level_expr>> args;
        std::string aggregate_type;

    public:
        method_dot_call(std::string item_name, std::string called, std::vector<std::unique_ptr<top_level_expr>> args) :
            item_name(item_name),
            called(called),
            args(std::move(args))
            {}

        void semantic_analysis() override;
        std::string get_ast_class() const override { return "function_dot_call"; }
        void debug_output();
        void set_is_class(bool is_class) { is_class = is_class; }
        bool get_is_class() { return is_class; }
        void set_aggregate_type(const std::string &ag_type) { aggregate_type = ag_type; }
        const std::string& get_ag_type() { return aggregate_type; }
        llvm::Value* codegen() override;
        type_enum::types get_expr_type() const override {return type;}   
        type_enum::types get_obj_type() const override { return obj_type; }    

    };

    /**
     * TODO: docs
     */
    class dot_call_var : public top_level_expr {
        std::string item_name;
        std::string called;
        type_enum::types type;
        bool is_class;

    public:
        dot_call_var(std::string item_name, std::string called) :
            item_name(item_name),
            called(called)
            {}

        void semantic_analysis() override;
        std::string get_ast_class() const override { return "dot_call_var"; }
        void debug_output();
        void set_is_class(bool is_class) { is_class = is_class; }
        bool get_is_class() { return is_class; }
        llvm::Value* codegen() override;
        type_enum::types get_expr_type() const override {return type;}   
    };
    
    extern std::string get_type_as_string(type_enum::types type);

}

#endif