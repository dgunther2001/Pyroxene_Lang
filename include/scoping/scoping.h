#ifndef SCOPING_H
#define SCOPING_H

#include "../include/codegen/codegen.h"
#include <map>

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
    extern bool is_llvm_scope_global();

}

namespace sem_analysis_scope {
        /**
         * @struct sem_analysis_info
         * @par Holds type and boolean indicating whether a variable has been initialized.
         * 
         * @var type
         * The type of the variable.
         * 
         * @var complex_dt
         * Stores information about the type complexity.
         * 
         * @var is_init
         * Indicates whether the variable has been assigned a value.
         */
        typedef struct {
            type_enum::types type;
            std::string complex_dt;
            bool is_init;
        } sem_analysis_info;

        /**
         * @par A map of defined functions that holds the name, the function return type, and a mpa of arguments as well as their return type
         */
        extern std::map<std::string, std::pair<type_enum::types /* return type */, std::map<int /* arg number */, type_enum::types /* arg type */>>> defined_functions;
        
        /**
         * @par A stack of hashmaps, where each map indicates the current level of scope. The map is of identifier names and related type and initialization information.
         */
        extern std::vector<std::map<std::string, sem_analysis_info>> sem_analysis_stack;

        /**
         * @par Contains information about valid method calls on complex data types.
         */
        extern std::map<std::string, std::set<std::pair<std::string, type_enum::types>>> valid_dot_calls;


        extern void create_scope();
        extern void exit_scope();
        extern void add_var_to_current_scope(const std::string &name, type_enum::types type, bool is_init, const std::string &complex_dt);
        extern type_enum::types get_var_type(const std::string &name);
        extern void add_function_defn(std::string name, type_enum::types ret_type, std::vector<type_enum::types> argument_types);
        extern type_enum::types get_func_ret_type(const std::string& name);
        extern bool global_contains_func_defn(const std::string& name);
        extern const std::map<int, type_enum::types>& get_arg_type_map(const std::string& name);
        extern type_enum::types get_param_type(const std::string& name, int arg_number);
        extern int get_num_params(const std::string& name);
        extern bool variable_exists_in_current_scope(const std::string &name);
        extern bool var_initialized(const std::string& name);
        extern bool var_exists(const std::string& name);
        extern void set_var_init(const std::string& name);
        extern int get_var_scope_level(const std::string& name);
        extern int get_scope_stack_size();
        extern std::string get_var_complex_dt(const std::string& name);


        extern void add_method_to_valid_dot_calls(const std::string &aggregate_type, const std::string &method, const type_enum::types type);
        extern bool method_valid_dot_call(const std::string &aggregate_type, const std::string &method);
        extern type_enum::types get_dot_call_type(const std::string &aggregate_type, const std::string &method);
}

namespace complex_dt_scope {

}

#endif