#ifndef SCOPING_H
#define SCOPING_H

#include "../include/codegen/codegen.h"

namespace scope {

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
        llvm::Value* allocation; /**< The variable allocation (can be an llvm::Argument*, or llvm::AllocaInst*) */
        var_or_arg var_arg; /**< Indicicates whether the variable is an argument, or variable */
        llvm::Type* type; /**< Holds the type of the variable */
        bool is_init; /**< Indicates whether the variable has been initialized with a value */
    } llvm_var_info;

    /**
     * @par Thus holds all of the information related to scope. It will also allow for variable shadowing
     */
    extern std::vector<std::map<std::string, llvm_var_info>> scoping_stack;
    
    void create_scope();
    void exit_scope();
    void add_var_to_current_scope(const std::string &name, llvm::AllocaInst* allocation, llvm::Type* type, bool is_init);
    void add_var_to_current_scope(const std::string &name, llvm::Argument* allocation, llvm::Type* type);
    llvm_var_info* variable_lookup(const std::string &var_name);
    bool variable_exists_in_current_scope(const std::string &name);
}

#endif