#ifndef TYPES_H
#define TYPES_H

namespace type_enum{
    /**
     * @par An enumeration of valid types Pyroxene that are stored inspecific AST nodes.
     */
    typedef enum {
        int_type = -1, ///< Integer type
        float_type = -2, ///< Float type
        char_type = -3, ///< Character type
        string_type = -4, ///< String type
        bool_type = -5, ///< Boolean type
        void_type = -6 ///< Void type 
    } types;

}

#endif