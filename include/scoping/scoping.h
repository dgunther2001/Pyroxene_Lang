#ifndef SCOPING_H
#define SCOPING_H

#include "../include/codegen/codegen.h"
#include <map>

namespace scope {
    /**
     * Holds the global list of defined functions.
     */
    extern std::map<std::string, ast::types> defined_functions;

    /**
     * @par Enum to indicate whether a scoped value is a variable or an argument
     */
    enum var_or_arg { 
        Variable, ///< Indicates a variable
        Argument  ///< Indicates an argument
    };

    /**
     * @struct llvm_var_info
     * @par Stores allocation, and type information related to a variable.
     *
     * This structure holds information about a variable's allocation, type, and initialization status.
     *
     * @var llvm_var_info::allocation
     * The variable allocation (can be an llvm::Argument* or llvm::AllocaInst*).
     *
     * @var llvm_var_info::var_arg
     * Indicates whether the variable is an argument or a regular variable.
     *
     * @var llvm_var_info::type
     * Holds the type of the variable.
     *
     * @var llvm_var_info::is_init
     * Indicates whether the variable has been initialized with a value.
     */
    typedef struct {
        llvm::Value* allocation; 
        var_or_arg var_arg; 
        llvm::Type* type; 
        bool is_init; 
    } llvm_var_info;

    /**
     * @par Thus holds all of the information related to scope. It will also allow for variable shadowing
     */
    extern std::vector<std::map<std::string, llvm_var_info>> scoping_stack;
    
    extern void create_scope();
    extern void exit_scope();
    extern void add_var_to_current_scope(const std::string &name, llvm::AllocaInst* allocation, llvm::Type* type, bool is_init);
    extern void add_var_to_current_scope(const std::string &name, llvm::Argument* allocation, llvm::Type* type);
    extern llvm_var_info* variable_lookup(const std::string &var_name);
    extern bool variable_exists_in_current_scope(const std::string &name);

}

namespace sem_analysis_scope {
        /**
         * TODO: docs
         */
        extern std::map<std::string, ast::types> defined_functions;
        
        /**
         * TODO: docs
         */
        extern std::vector<std::map<std::string, sem_analysis_info>> sem_analysis_stack;

        /**
         * TODO: docs
         */
        typedef struct {
            ast::types type;
            bool is_init;
        } sem_analysis_info;


        extern void create_scope();
        extern void exit_scope();
        extern void add_var_to_current_scope(const std::string &name, ast::types type, bool is_init);
        extern ast::types get_var_type(const std::string &name);
        extern void add_function_defn(std::string name, ast::types ret_type);
        extern bool global_contains_func_defn(std::string name);
}

#endif