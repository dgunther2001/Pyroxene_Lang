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

        virtual type_enum::types get_expr_type() const { // PLACEHOLDER
            return type_enum::types::float_type;
        }

        virtual std::string get_name() const {
            return ""; 
        }

        virtual void semantic_analysis() {}
    };

    /**
     * @par This class holds the data related to function definitions.
     * @code
        class func_defn {
        private:
            type_enum::types return_type;
            std::string func_name;
            std::vector<std::unique_ptr<top_level_expr>> expressions;
            std::set<std::string> function_symbol_table;
            std::vector<std::unique_ptr<top_level_expr>>parameters;
        public:
            func_defn(type_enum::types return_type, std::string name, std::vector<std::unique_ptr<top_level_expr>> expressions, std::set<std::string> var_names, std::vector<std::unique_ptr<top_level_expr>> parameters) :
                return_type(return_type),
                func_name(name),
                expressions(std::move(expressions)),
                function_symbol_table(std::move(var_names)),
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
        std::set<std::string> function_symbol_table;
        std::vector<std::unique_ptr<top_level_expr>>parameters;
    public:
        func_defn(type_enum::types return_type, std::string name, std::vector<std::unique_ptr<top_level_expr>> expressions, std::set<std::string> var_names, std::vector<std::unique_ptr<top_level_expr>> parameters) :
            return_type(return_type),
            func_name(name),
            expressions(std::move(expressions)),
            function_symbol_table(std::move(var_names)),
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
            void set_expr_type(type_enum::types new_type) { type = new_type; }
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
        void set_expr_type(type_enum::types new_type) { type = new_type; }
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

        public:
            identifier_expr(const std::string& identifier_name) :
                identifier_name(identifier_name)
                {}
            void semantic_analysis() override;
            std::string get_ast_class() const override { return "identifier"; }   
            void set_expr_type(type_enum::types new_type) { type = new_type; }
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

    public:
        identifier_expr(const std::string& identifier_name) :
            identifier_name(identifier_name)
            {}
        void semantic_analysis() override;
        std::string get_ast_class() const override { return "identifier"; }   
        void set_expr_type(type_enum::types new_type) { type = new_type; }
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
            int64_t held_value;
            type_enum::types type = type_enum::int_type;

        public:
            integer_expression(int64_t held_value) : held_value(held_value) {}
            std::string get_ast_class() const override { return "int"; }
            const int64_t get_value() const {return held_value;}
            void debug_output();
            type_enum::types get_expr_type() const override {return type;}
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class integer_expression : public top_level_expr {
    private:
        int64_t held_value;
        type_enum::types type = type_enum::int_type;

    public:
        integer_expression(int64_t held_value) : held_value(held_value) {}
        std::string get_ast_class() const override { return "int"; }
        const int64_t get_value() const {return held_value;}
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

        public:
            variable_declaration(type_enum::types var_type, const std::string& identifier_name) :
                type(var_type),
                identifier_name(identifier_name)
                {}
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

    public:
        variable_declaration(type_enum::types var_type, const std::string& identifier_name) :
            type(var_type),
            identifier_name(identifier_name)
            {}
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

        public:
            variable_definition(type_enum::types var_type, const std::string& identifier_name, std::unique_ptr<top_level_expr> assigned_value) :
                type(var_type),
                identifier_name(identifier_name),
                assigned_value(std::move(assigned_value))
                {}
        
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

    public:
        variable_definition(type_enum::types var_type, const std::string& identifier_name, std::unique_ptr<top_level_expr> assigned_value) :
            type(var_type),
            identifier_name(identifier_name),
            assigned_value(std::move(assigned_value))
            {}
        
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

        public:
            variable_assignment(type_enum::types var_type, const std::string& identifier_name, std::unique_ptr<top_level_expr> assigned_value) :
                identifier_name(identifier_name),
                assigned_value(std::move(assigned_value))
                {}

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

    public:
        variable_assignment(const std::string& identifier_name, std::unique_ptr<top_level_expr> assigned_value) :
            identifier_name(identifier_name),
            assigned_value(std::move(assigned_value))
            {}

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
            void set_expr_type(type_enum::types new_type) { type = new_type; }
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
        void set_expr_type(type_enum::types new_type) { type = new_type; }
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

    class else_expr : public top_level_expr {
    private:
        std::vector<std::unique_ptr<top_level_expr>> expressions;
    
    public:
        else_expr(std::vector<std::unique_ptr<top_level_expr>> expressions) :
            expressions(std::move(expressions))
            {}
        void semantic_analysis() override;
        std::string get_ast_class() const override { return "else"; }
        void debug_output();
        llvm::Value* codegen() override;
    };

    class func_call_expr : public top_level_expr {
    private:
        std::string func_name;
        std::vector<std::unique_ptr<top_level_expr>> arguments;

    public:
        func_call_expr(std::string func_name, std::vector<std::unique_ptr<top_level_expr>> args) :
            func_name(func_name),
            arguments(std::move(args))
            {}
        void semantic_analysis() override;
        std::string get_ast_class() const override { return "func_call"; }
        void debug_output();
        llvm::Value* codegen() override;

    };
    
    
    extern std::string get_type_as_string(type_enum::types type);

}

#endif