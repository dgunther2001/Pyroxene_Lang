#include "../include/scoping/scoping.h"

namespace scope {
    std::vector<std::map<std::string, llvm_var_info>> scoping_stack;

    /**
     * TODO: docs
     */
    void create_scope() {
        scoping_stack.emplace_back();
    }

    /**
     * TODO: docs
     */
    void exit_scope() {
        if (!scoping_stack.empty()) {
            scoping_stack.pop_back();
        } else {
            utility::scoping_error("Attempted to exit scope when no scopes exist", parser::current_line);
        }
    }

    /**
     * TODO: docs
     */
    void add_var_to_current_scope(const std::string &name, llvm::AllocaInst* allocation, llvm::Type* type) {
        scoping_stack.back()[name] = {allocation, type};
    }

    /**
     * TODO: docs
     */
    llvm_var_info* variable_lookup(const std::string &var_name) {
        
        for (auto it = scoping_stack.rbegin(); it != scoping_stack.rend(); ++it) {
            auto variable = it->find(var_name);  
            if (variable != it->end()) {
                return &variable->second;  
            }
        }

        utility::scoping_error("Variable not found", parser::current_line);
    }

    /**
     * TODO: docs
     */
    bool variable_exists_in_current_scope(const std::string &name) {
        if (!scoping_stack.empty()) {
            const auto& current_scope = scoping_stack.back();
            return current_scope.find(name) != current_scope.end();
        }
        return false;   
    }
}