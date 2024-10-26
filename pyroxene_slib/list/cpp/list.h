#ifndef PYROXENE_SLIB_LIST
#define PYROXENE_SLIB_LIST

#include "../../util/slib_util.h"
#include <vector>
#include <variant>
#include <string>

typedef std::variant<int, float, char, std::string, bool> list_variant;

class slib_list {
private:
    std::vector<list_variant> list;

public:
    slib_list() : list() {}

    void insert(list_variant item, int index) {
        if (index < 0) {
            slib_util::list_error("Insertion index less than 0");
        }
        if (index > list.size()) {
            list.push_back(item);
        } else {
            list.insert(list.begin() + index, item);
        }
    }

    list_variant remove(int index) {
        if (index < 0 || index >= list.size()) {
            slib_util::list_error("Index out of range");
        }
        list_variant item = list.at(index);
        list.erase(list.begin() + index);

        return item;
    }

    list_variant& at(int index) {
        if (index < 0 || index >= list.size()) {
            slib_util::list_error("Index out of range");
        }
        return list.at(index);
    }

    int size() { return list.size(); }


};


#endif
