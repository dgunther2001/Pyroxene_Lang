#ifndef PYROXENE_SLIB_LIST_WRAPPER
#define PYROXENE_SLIB_LIST_WRAPPER

#include "../cpp/list.h"
#include "../../util/slib_util.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    VARIANT_INT,
    VARIANT_FLOAT,
    VARIANT_CHAR,
    VARIANT_STRING,
    VARIANT_BOOL
} variant_type;

typedef struct {
    variant_type type;
    union {
        int int_val;
        float float_val;
        char char_val;
        const char* string_val;
        bool bool_val;
    } data_literal;
} variant_c;


typedef struct slib_list slib_list_t;

slib_list_t* slib_list_create();
void slib_list_destroy(slib_list_t* list);

void slib_list_insert(slib_list_t* list, list_variant item, int index);
list_variant slib_list_remove(slib_list_t* list, int index);
list_variant* slib_list_at(slib_list_t* list, int index);
int slib_list_size(slib_list_t* list);

inline variant_c* create_int_variant(int value);
inline variant_c* create_float_variant(float value);
inline variant_c* create_char_variant(char value);
inline variant_c* create_bool_variant(bool value);
inline variant_c* create_string_variant(const char* value);
inline void destroy_variant(variant_c* var);

#ifdef __cplusplus
}
#endif

#endif