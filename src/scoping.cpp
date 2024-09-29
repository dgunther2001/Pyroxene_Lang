#include "../include/scoping/scoping.h"

namespace scope {
    std::vector<std::map<std::string, llvm_var_info>> scoping_stack;

    std::map<std::string, ast::types> defined_functions;

    /**
     * @par Simply adds a new scope to the cope stack
     * @code
     * scoping_stack.emplace_back();
     * @endcode
     */
    void create_scope() {
        scoping_stack.emplace_back();
    }

    /**
     * @par Simply removes the most recent scope from the stack.
     * @code
     *  if (!scoping_stack.empty()) {
            scoping_stack.pop_back();
        } else {
            utility::scoping_error("Attempted to exit scope when no scopes exist", parser::current_line);
        }
     * @endcode
     */
    void exit_scope() {
        if (!scoping_stack.empty()) {
            scoping_stack.pop_back();
        } else {
            utility::scoping_error("Attempted to exit scope when no scopes exist", parser::current_line);
        }
    }

    /**
     * @par Takes in a variable allocation and adds it to the current scope.
     * @code
     * scoping_stack.back()[name] = {allocation, Variable, type, is_init};
     * @endcode
     */
    void add_var_to_current_scope(const std::string &name, llvm::AllocaInst* allocation, llvm::Type* type, bool is_init) {
        scoping_stack.back()[name] = {allocation, Variable, type, is_init};
    }

    /**
     * @par Takes a function argument and adds it to the current scope
     * @code
     * scoping_stack.back()[name] = {allocation, Argument, type, true};
     * @endcode
     */
    void add_var_to_current_scope(const std::string &name, llvm::Argument* allocation, llvm::Type* type) {
        scoping_stack.back()[name] = {allocation, Argument, type, true};
    }

    /**
     * @par Checks if a variable exists in scope. Does implicit variable shadowing by selecting the highest entry on the stack.
     * @code
     * for (auto it = scoping_stack.rbegin(); it != scoping_stack.rend(); ++it) {
            auto variable = it->find(var_name);  
            if (variable != it->end()) {
                return &variable->second;  
            }
        }

        return nullptr;
     * @endcode
     */
    llvm_var_info* variable_lookup(const std::string &var_name) {

        for (auto it = scoping_stack.rbegin(); it != scoping_stack.rend(); ++it) {
            auto variable = it->find(var_name);  
            if (variable != it->end()) {
                return &variable->second;  
            }
        }

        return nullptr;
    }

    /**
     * @par Checks if the variable exists in the current scope
     * @code
     *  if (!scoping_stack.empty()) {
            const auto& current_scope = scoping_stack.back();
            return current_scope.find(name) != current_scope.end();
        }
        return false; 
     * @endcode
     */
    bool variable_exists_in_current_scope(const std::string &name) {
        if (!scoping_stack.empty()) {
            const auto& current_scope = scoping_stack.back();
            return current_scope.find(name) != current_scope.end();
        }
        return false;   
    }

    /**
     * @par Inserts a function into the global symbol table of defined functions to validate before calls
     * @code
     * defined_functions.insert({name, ret_type});
     * @endcode
     */
    void add_function_defn(std::string name, ast::types ret_type) {
        defined_functions.insert({name, ret_type});
    }

    /**
     * @par Simply returns whether a function already exists in the global symbol table.
     * @code
     * if (defined_functions.empty()) return false;
       return defined_functions.find(name) != defined_functions.end();
     * @endcode
     */
    bool global_contains_func_defn(std::string name) {
        if (defined_functions.empty()) return false;
        return defined_functions.find(name) != defined_functions.end();
    }
}