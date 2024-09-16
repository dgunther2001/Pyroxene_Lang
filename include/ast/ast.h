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
#include <memory>
#include <string>
#include <vector>


namespace ast {

    /**
     * @par An enumeration of valid types Pyroxene that are stored inspecific AST nodes.
     */
    typedef enum {
        int_type = -1, ///< Integer literals
        float_type = -2, ///< Float literals
        char_type = -3, ///< Character literals
        string_type = -4, ///< String literals
        bool_type = -5 ///< Boolean literals
    } types;

    /**
     * @par This is an abstract class that all expression type AST nodes fall under.
     * @code
     * class top_level_expr {
        public:
            virtual ~top_level_expr() = default; 
            virtual llvm::Value* codegen() = 0; // function that will generate LLVM IR ("= 0" makes this class abstrac)

            virtual ast::types get_expr_type() const { // placeholder function overwritten for identfier and literal AST leavs.
                return ast::types::float_type;
            }
        };
     * @endcode
     */
    class top_level_expr {
    public:
        virtual ~top_level_expr() = default;
        //virtual void debug_output();
        //virtual llvm::Value* codegen() = 0;

        virtual ast::types get_expr_type() const { // PLACEHOLDER
            return ast::types::float_type;
        }
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

    /**
     * @par This parses binary expressions in a way that deals with operator precedence, and potentially infinite nesting.
     * 
     * @code
        class binary_expr : public top_level_expr {
        private: 
            lexer::Token_Type op; // operator: tok_plus, tok_minus, etc...
            std::unique_ptr<top_level_expr> left, right; // pointers to the nested expressions (can be primary, or binary, allowing infinite nesting)
            types type; 

        public:
            binary_expr(lexer::Token_Type op, std::unique_ptr<top_level_expr> left, std::unique_ptr<top_level_expr> right, types type) :
                op(op),
                left(std::move(left)),
                right(std::move(right)),
                type(type)
                {}

            types get_expr_type() const override {return type;}
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
        types type;

    public:
        binary_expr(lexer::Token_Type op, std::unique_ptr<top_level_expr> left, std::unique_ptr<top_level_expr> right, types type) :
            op(op),
            left(std::move(left)),
            right(std::move(right)),
            type(type)
            {}

        types get_expr_type() const override {return type;}
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
        //llvm::Value* codegen() override;
    };

    /**
     * @par Stores primary expressions made up of a single identifier (defined variable).
     * 
     * @code
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
            types get_expr_type() const override {return type;}
            void debug_output();
            llvm::Value* codegen() override;

        };
     * @endcode
     */
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
        types get_expr_type() const override {return type;}
        void debug_output();
        //llvm::Value* codegen() override;

    };

    /**
     * @par Stores expressions of a single integer literal.
     * 
     * @code
        class integer_expression : public top_level_expr {
        private:
            int held_value;
            types type = int_type;

        public:
            integer_expression(int held_value) : held_value(held_value) {}
            const int get_value() const {return held_value;}
            void debug_output();
            types get_expr_type() const override {return type;}
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class integer_expression : public top_level_expr {
    private:
        int held_value;
        types type = int_type;

    public:
        integer_expression(int held_value) : held_value(held_value) {}
        const int get_value() const {return held_value;}
        void debug_output();
        types get_expr_type() const override {return type;}
        //llvm::Value* codegen() override;
    };

    /**
     * @par Stores expressions of a single float literal.
     * 
     * @code
        class float_expression : public top_level_expr {
        private:
            float held_value;
            types type = float_type;

        public:
            float_expression(float held_value) : held_value(held_value) {}
            const float get_value() const {return held_value;}
            void debug_output();
            types get_expr_type() const override {return type;}
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class float_expression : public top_level_expr {
    private:
        float held_value;
        types type = float_type;

    public:
        float_expression(float held_value) : held_value(held_value) {}
        const float get_value() const {return held_value;}
        void debug_output();
        types get_expr_type() const override {return type;}
        //llvm::Value* codegen() override;
    };

    /**
     * @par Stores expressions of a single character literal.
     * 
     * @code
        class char_expression : public top_level_expr {
        private:
            char held_value;
            types type = char_type;

        public:
            char_expression(char held_value) : held_value(held_value) {}
            const char get_value() const {return held_value;}
            void debug_output();
            types get_expr_type() const override {return type;}
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class char_expression : public top_level_expr {
    private:
        char held_value;
        types type = char_type;

    public:
        char_expression(char held_value) : held_value(held_value) {}
        const char get_value() const {return held_value;}
        void debug_output();
        types get_expr_type() const override {return type;}
        //llvm::Value* codegen() override;
    };

    /**
     * @par Stores expressions of a single string literal.
     * 
     * @code
        class string_expression : public top_level_expr {
        private:
            std::string held_value;
            types type = string_type;

        public:
            string_expression(std::string held_value) : held_value(held_value) {}
            const std::string& get_value() const {return held_value;}
            void debug_output();
            types get_expr_type() const override {return type;}
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class string_expression : public top_level_expr {
    private:
        std::string held_value;
        types type = string_type;

    public:
        string_expression(std::string held_value) : held_value(held_value) {}
        const std::string& get_value() const {return held_value;}
        void debug_output();
        types get_expr_type() const override {return type;}
        //llvm::Value* codegen() override;
    };

    /**
     * @par Stores expressions of a single boolean literal.
     * 
     * @code 
        class bool_expression : public top_level_expr {
        private:
            bool held_value;
            types type = bool_type;

        public:
            bool_expression(bool held_value) : held_value(held_value) {}
            const bool get_value() const {return held_value;}
            void debug_output();
            types get_expr_type() const override {return type;}
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class bool_expression : public top_level_expr {
    private:
        bool held_value;
        types type = bool_type;

    public:
        bool_expression(bool held_value) : held_value(held_value) {}
        const bool get_value() const {return held_value;}
        void debug_output();
        types get_expr_type() const override {return type;}
        //llvm::Value* codegen() override;
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
            types type;
            std::string identifier_name;

        public:
            variable_declaration(types var_type, const std::string& identifier_name) :
                type(var_type),
                identifier_name(identifier_name)
                {}
            types get_expr_type() const override {return type;} 
            const std::string& get_name() const {return identifier_name;}
            void debug_output();
            llvm::Value* codegen() override;
        };
    * @endcode
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
        types get_expr_type() const override {return type;} 
        const std::string& get_name() const {return identifier_name;}
        void debug_output();
        //llvm::Value* codegen() override;
    };

    /**
     * @par Stores variable definitions (e.g. => int my_var = 7;).
     * 
     * @code
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
            
            types get_expr_type() const override {return type;} 
            const std::string& get_name() const {return identifier_name;}
            void debug_output();
            llvm::Value* codegen() override;
        };
     * @endcode
     */
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
        
        types get_expr_type() const override {return type;} 
        const std::string& get_name() const {return identifier_name;}
        void debug_output();
        //llvm::Value* codegen() override;
    };

    /**
     * @par Holds reassignments of predefined/declared variables (e.g. my_var = 6;).
     * 
     * @code
        class variable_assignment : public top_level_expr {
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
            types get_expr_type() const override {return type;} 
            const std::string& get_name() const {return identifier_name;}
            void debug_output();
            llvm::Value* codegen() override;
        };
     * @endcode
     */
    class variable_assignment : public top_level_expr {
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
        types get_expr_type() const override {return type;} 
        const std::string& get_name() const {return identifier_name;}
        void debug_output();
        //llvm::Value* codegen() override;
    };

    
    
    extern std::string get_type_as_string(types type);

}

#endif