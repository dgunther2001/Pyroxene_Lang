#include "list_wrapper.h"


#ifdef __cplusplus
extern "C" {
#endif
slib_list_t* slib_list_create() {
    return new slib_list(); // add error handling
}

void slib_list_destroy(slib_list_t* list) {
    if (list == nullptr) {
        slib_util::list_error("List instantiated to nullptr");
    }
    delete list;
}

void slib_list_insert(slib_list_t* list, list_variant item, int index) {
    if (list == nullptr) {
        slib_util::list_error("Inserting into list that is a nullptr");
    }  
    list->insert(item, index);
}


list_variant slib_list_remove(slib_list_t* list, int index) {
    return list->remove(index);
}


list_variant* slib_list_at(slib_list_t* list, int index) {
    return &list->at(index);
}


int slib_list_size(slib_list_t* list) {
    return list->size();
}

inline variant_c* create_int_variant(int value) {
    variant_c* variant = (variant_c*)malloc(sizeof(variant_c));
    variant->type = VARIANT_INT;
    variant->data_literal.int_val = value;
    return variant;
}

inline variant_c* create_float_variant(float value) {
    variant_c* variant = (variant_c*)malloc(sizeof(variant_c));
    variant->type = VARIANT_FLOAT;
    variant->data_literal.float_val = value;
    return variant;
}

inline variant_c* create_char_variant(char value) {
    return nullptr;
}

inline variant_c* create_bool_variant(bool value) {
    return nullptr;
}

inline variant_c* create_string_variant(const char* value) {
    return nullptr;
}

inline void destroy_variant(variant_c* var) {
    return nullptr;
}

#ifdef __cplusplus
}
#endif