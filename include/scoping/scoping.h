#ifndef SCOPING_H
#define SCOPING_H

#include "../include/codegen/codegen.h"

namespace scope {

    /**
     * @par Stores allocation, and type information related to a variable.
     */
    typedef struct {
        llvm::AllocaInst* allocation;
        llvm::Type* type;
    } llvm_var_info;

    /**
     * Thus holds all of the information related to scope. It will also allow for variable shadowing
     */
    extern std::vector<std::map<std::string, llvm_var_info>> scoping_stack;
    
    void create_scope();
    void exit_scope();
    void add_var_to_current_scope(const std::string &name, llvm::AllocaInst* allocation, llvm::Type* type);
    llvm_var_info* variable_lookup(const std::string &var_name);
    bool variable_exists_in_current_scope(const std::string &name);
}

#endif