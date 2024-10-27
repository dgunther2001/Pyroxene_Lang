#ifndef PYROXENE_SLIB_LIST
#define PYROXENE_SLIB_LIST

#include "../../util/slib_util.h"
#include <vector>

template <typename T>
class slib_list {
private:
    std::vector<T> list;

public:
    slib_list() : list() {}

    void insert(T item, int index) {
        if (index < 0) {
            slib_util::list_error("Insertion index less than 0");
        }
        if (index > list.size()) {
            list.push_back(item);
        } else {
            list.insert(list.begin() + index, item);
        }
    }

    T remove(int index) {
        if (index < 0 || index >= list.size()) {
            slib_util::list_error("Index out of range");
        }
        T item = list.at(index);
        list.erase(list.begin() + index);

        return item;
    }

    T at(int index) {
        if (index < 0 || index >= list.size()) {
            slib_util::list_error("Index out of range");
        }
        return list.at(index);
    }

    int size() { return list.size(); }


};


#endif
