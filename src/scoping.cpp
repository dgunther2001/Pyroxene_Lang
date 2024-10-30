#include "../include/scoping/scoping.h"

namespace scope {
    std::vector<std::map<std::string, llvm_var_info>> scoping_stack;

    /**
     * @par Simply adds a new scope to the scope stack
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
     * @param name The name of the variable.
     * @param allocation A pointer to the llvm variable allocation.
     * @param type A pointer to the variable type.
     * @param is_init Indicates whether the variable has been initialized yet.
     * @code 
     * scoping_stack.back()[name] = {allocation, Variable, type, is_init};
     * @endcode
     */
    void add_var_to_current_scope(const std::string &name, llvm::AllocaInst* allocation, llvm::Type* type, bool is_init) {
        scoping_stack.back()[name] = {allocation, Variable, type, is_init};
    }

    /**
     * @par Takes a function argument and adds it to the current scope.
     * @param name The name of the variable.
     * @param allocation A pointer to the llvm argument allocation.
     * @param type A pointer to the variable type.
     * @code
     * scoping_stack.back()[name] = {allocation, Argument, type, true};
     * @endcode
     */
    void add_var_to_current_scope(const std::string &name, llvm::Argument* allocation, llvm::Type* type) {
        scoping_stack.back()[name] = {allocation, Argument, type, true};
    }

    /**
     * @par Checks if a variable exists in scope. Does implicit variable shadowing by selecting the highest entry on the stack.
     * @param var_name The name of the variable being searched for in the stack.
     * @code
     * for (auto it = scoping_stack.rbegin(); it != scoping_stack.rend(); ++it) {
            auto variable = it->find(var_name);  
            if (variable != it->end()) {
                return &variable->second;  
            }
        }

        utility::scoping_error("Variable not found in current scope", parser::current_line);
     * @endcode
     */
    llvm_var_info* variable_lookup(const std::string &var_name) {
        for (auto it = scoping_stack.rbegin(); it != scoping_stack.rend(); ++it) {
            auto variable = it->find(var_name);  
            if (variable != it->end()) {
                return &variable->second;  
            }
        }
        utility::scoping_error("(Lookup) Variable not found in current scope", parser::current_line);
    }

    /**
     * @par Checks if the variable exists in the current scope
     * @param name The name of the variable being checked.
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
     * @par Informs the user if the we are in global scope.
     * @code
     * return scoping_stack.size() == 0;
     * @endcode
     */
    bool is_llvm_scope_global() {
        return scoping_stack.size() == 0;
    }
}

namespace sem_analysis_scope {
    std::map<std::string, std::pair<type_enum::types /* return type */, std::map<int /* arg number */, type_enum::types /* arg type */>>> defined_functions;
    std::vector<std::map<std::string, sem_analysis_info>> sem_analysis_stack;

    /**
     * @par Generates a new scope (crreates and adds a new hashmap) to the semantic analysis stack.
     * @code
     * sem_analysis_stack.emplace_back();  
     * @endcode
     */
    void create_scope() {
        sem_analysis_stack.emplace_back();   
    }

    /**
     * @par Exits a semantic analysis scope frame by popping from the stack.
     * @code
     *  if (!sem_analysis_stack.empty()) {
            sem_analysis_stack.pop_back();
        } else {
            utility::scoping_error("Attempted to exit scope when no scopes exist", parser::current_line);
        }
     * @endcode
     */
    void exit_scope() {
        if (!sem_analysis_stack.empty()) {
            sem_analysis_stack.pop_back();
        } else {
            utility::scoping_error("Attempted to exit scope when no scopes exist", parser::current_line);
        }
    }

    /**
     * @par Inserts a function into the global symbol table of defined functions to validate before calls
     * @param name The name of the function.
     * @param ret_type The return type of the function.
     * @param argument_types The argument types of a function definitions
     * @code
     *  std::map<int, type_enum::types> argument_type_map;
        for (int i = 0; i < argument_types.size(); i++) {
            argument_type_map.insert({i + 1, argument_types.at(i)});
        }

        defined_functions[name] = std::make_pair(ret_type, argument_type_map);
     * @endcode
     */
    void add_function_defn(std::string name, type_enum::types ret_type, std::vector<type_enum::types> argument_types) {
        std::map<int, type_enum::types> argument_type_map;
        for (int i = 0; i < argument_types.size(); i++) {
            argument_type_map.insert({i + 1, argument_types.at(i)});
        }

        defined_functions[name] = std::make_pair(ret_type, argument_type_map);
    }

    /**
     * @par Grabs the return type of a function.
     * @param name The name of the function
     * @code
     *  if (defined_functions.find(name) == defined_functions.end()) {
            utility::scoping_error("Function type unaquirable as the function is undeclared", parser::current_line);
        }
        return defined_functions[name].first;
     * @endcode
     */
    type_enum::types get_func_ret_type(const std::string& name) {
        if (defined_functions.find(name) == defined_functions.end()) {
            utility::scoping_error("Function type unaquirable as the function is undeclared", parser::current_line);
        }
        return defined_functions[name].first;
    }

    /**
     * @par Simply returns whether a function already exists in the global symbol table.
     * @param name The name of the function.
     * @code
     * if (defined_functions.empty()) return false;
       return defined_functions.find(name) != defined_functions.end();
     * @endcode
     */
    bool global_contains_func_defn(const std::string& name) {
        if (defined_functions.empty()) return false;
        return defined_functions.find(name) != defined_functions.end();
    }

    /**
     * @par Returns the map corresponding to the arguments and their respective types from the defined functions map.
     * @param name Simply the name of the function
     * @code
     *  if (defined_functions.find(name) == defined_functions.end()) {
            utility::scoping_error("Function type unaquirable as the function is undeclared", parser::current_line);
        }
        return defined_functions[name].second;
     * @endcode
     */
    const std::map<int, type_enum::types>& get_arg_type_map(const std::string& name) {
        if (defined_functions.find(name) == defined_functions.end()) {
            utility::scoping_error("Function type unaquirable as the function is undeclared", parser::current_line);
        }
        return defined_functions[name].second;
    }

    /**
     * @par Returns the type of the arg_numberth parameter in the parameter map.
     * @param name The name of the function.
     * @param arg_number The parameter whose type we are trying to access.
     * @code
     *  if (defined_functions.find(name) == defined_functions.end()) {
            utility::scoping_error("Parameter type unaquirable as the function is undeclared", parser::current_line);
        }

        if (arg_number > get_num_params(name) + 1 || arg_number <= 0) {
            utility::scoping_error("Argument number inaccessible as function does not specify " + arg_number + " arguments, or argument number less than or equal to 0", parser::current_line);
        }

        return defined_functions[name].second[arg_number];
     * @endcode
     */
    type_enum::types get_param_type(const std::string& name, int arg_number) {
        if (defined_functions.find(name) == defined_functions.end()) {
            utility::scoping_error("Parameter type unaquirable as the function is undeclared", parser::current_line);
        }

        if (arg_number > get_num_params(name) + 1 || arg_number <= 0) {
            utility::scoping_error("Argument number inaccessible, as it is <= 0, or it does not exist", parser::current_line);
        }

        return defined_functions[name].second[arg_number];
    }

    /**
     * @par Returns the number of arguments in a function definition.
     * @param name The name of the function.
     * @code
     *  if (defined_functions.find(name) == defined_functions.end()) {
            utility::scoping_error("Function parameters unaquirable as the function is undeclared", parser::current_line);
        }
        return defined_functions[name].second.size();
        @endcode
     */
    int get_num_params(const std::string& name) {
        if (defined_functions.find(name) == defined_functions.end()) {
            utility::scoping_error("Function parameters unaquirable as the function is undeclared", parser::current_line);
        }
        return defined_functions[name].second.size();
    }

    /**
     * @par Grabs the type of the top most decl/defn of a variable on the scope stack.
     * @param name The name of the variable.
     * @code
     *  for (auto it = sem_analysis_stack.rbegin(); it != sem_analysis_stack.rend(); ++it) {
            auto variable = it->find(name);  
            if (variable != it->end()) {
                return variable->second.type;  
            }
        }
        utility::scoping_error("Variable not found in current scope", parser::current_line);
     * @endcode
     */
    type_enum::types get_var_type(const std::string &name) {
        for (auto it = sem_analysis_stack.rbegin(); it != sem_analysis_stack.rend(); ++it) {
            auto variable = it->find(name);  
            if (variable != it->end()) {
                return variable->second.type;  
            }
        }
        utility::scoping_error("(Type) Variable not found in current scope", parser::current_line);
    }

    /**
     * @par Adds a variable to the current scope on the semantic analysis stack.
     * @param name The name of the new variable.
     * @param type The type of the variable.
     * @param is_init Has the variable just been declared or defined.
     * @param complex_dt Stores the name of the complex data type.
     * @code
        if (sem_analysis_stack.empty()) {
            utility::scoping_error("Semantic analysis scope stack is empty", parser::current_line);
        }
        sem_analysis_stack.back()[name] = {type, complex_dt, is_init};
     * @endcode
     */
    void add_var_to_current_scope(const std::string &name, type_enum::types type, bool is_init, const std::string &complex_dt) {
        if (sem_analysis_stack.empty()) {
            utility::scoping_error("Semantic analysis scope stack is empty", parser::current_line);
        }
        sem_analysis_stack.back()[name] = {type, complex_dt, is_init};
    }

    /**
     * @par Checks whether the variable has been declared in the current scope.
     * @param name The name of the variable.
     * @code
     *  if (!sem_analysis_stack.empty()) {
            const auto& current_scope = sem_analysis_stack.back();
            return current_scope.find(name) != current_scope.end();
        }
        return false;  
     * @endcode
     */
    bool variable_exists_in_current_scope(const std::string& name) {
        if (!sem_analysis_stack.empty()) {
            const auto& current_scope = sem_analysis_stack.back();
            return current_scope.find(name) != current_scope.end();
        }
        return false;   
    }

    /**
     * @par Checks if a variable (the highest in the scope stack) has been initialized with a value.
     * @param name The name of the variable.
     * @code
     *  for (auto it = sem_analysis_stack.rbegin(); it != sem_analysis_stack.rend(); ++it) {
            auto variable = it->find(name);  
            if (variable != it->end()) {
                return variable->second.is_init;  
            }
        }

        utility::scoping_error("Variable does not exist in current scope", parser::current_line);
     * @endcode
     */
    bool var_initialized(const std::string& name) {
        for (auto it = sem_analysis_stack.rbegin(); it != sem_analysis_stack.rend(); ++it) {
            auto variable = it->find(name);  
            if (variable != it->end()) {
                return variable->second.is_init;  
            }
        }

        utility::scoping_error("Variable does not exist in current scope", parser::current_line);
    }

    /**
     * @par Check if the variable exists at all in the entire semantic analysis scope stack.
     * @param name The name of the variable.
     * @code
     *  for (auto it = sem_analysis_stack.rbegin(); it != sem_analysis_stack.rend(); ++it) {
            auto variable = it->find(name);  
            if (variable != it->end()) {
                return true;  
            }
        }
        return false;
     * @endcode
     */
    bool var_exists(const std::string& name) {
        for (auto it = sem_analysis_stack.rbegin(); it != sem_analysis_stack.rend(); ++it) {
            auto variable = it->find(name);  
            if (variable != it->end()) {
                return true;  
            }
        }
        return false;
    }

    /**
     * @par When a variable is assigned a value after declaration, we can change it's initialization value (boolean) on the scope stack.
     * @param name The name of the variable.
     * @code
     *  for (auto it = sem_analysis_stack.rbegin(); it != sem_analysis_stack.rend(); ++it) {
            auto variable = it->find(name);  
            if (variable != it->end()) {
                variable->second.is_init = true;
                return;
            } 
        }

        utility::scoping_error("Variabale not found", parser::current_line);
     * @endcode
     */
    void set_var_init(const std::string& name) {
        for (auto it = sem_analysis_stack.rbegin(); it != sem_analysis_stack.rend(); ++it) {
            auto variable = it->find(name);  
            if (variable != it->end()) {
                variable->second.is_init = true;
                return;
            } 
        }

        utility::scoping_error("Variabale not found", parser::current_line);
    }

    /**
     * @par Returns the scope level of a particular variable to set the global parameter (min scope is 0)
     * @param name The name of the variable.
     * @code
     *  int loc = sem_analysis_stack.size() - 1;
        for (auto it = sem_analysis_stack.rbegin(); it != sem_analysis_stack.rend(); ++it) {
            auto variable = it->find(name);  
            if (variable != it->end()) {
                return loc;
            } 
            loc--;
        }  
     * @endcode
     */
    int get_var_scope_level(const std::string& name) {
        int loc = sem_analysis_stack.size() - 1;
        for (auto it = sem_analysis_stack.rbegin(); it != sem_analysis_stack.rend(); ++it) {
            auto variable = it->find(name);  
            if (variable != it->end()) {
                return loc;
            } 
            loc--;
        }  
    }

    /**
     * @par Returns the size of the scope stack. If the value is 0, we are currently operating in the global scope.
     * @code
     * return sem_analysis_stack.size();
     * @endcode
     * 
     */
    int get_scope_stack_size() {
        return sem_analysis_stack.size();
    }

    /** 
    typedef enum {
        GRAPH,
        LIST
    } slib_dt;

    typedef struct {
        slib_dt data_type;
        types::type contained_type;
    } slib_data_info;

    std::vector<std::map<std::string, slib_data_info>> sem_analysis_stack;
    */

}
