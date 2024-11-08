#ifndef PYROXENE_SLIB_LIST
#define PYROXENE_SLIB_LIST

#include <vector>
#include <iostream>

void list_error(const std::string& message) {
        std::cout <<"\033[1;31m";
        std::cout << "List error: " + message + ".\n";
        exit(1);
}

template <typename T>
class slib_list {
private:
    std::vector<T> list;

public:
    slib_list() : list() {}

    void insert(T item, int index) {
        if (index < 0) {
            list_error("Insertion index less than 0");
        }
        if (index > list.size()) {
            list.push_back(item);
        } else {
            list.insert(list.begin() + index, item);
        }
    }

    T remove(int index) {
        if (index < 0 || index >= list.size()) {
            list_error("Index out of range");
        }
        T item = list.at(index);
        list.erase(list.begin() + index);

        return item;
    }

    T at(int index) {
        if (index < 0 || index >= list.size()) {
            list_error("Index out of range");
        }
        return list.at(index);
    }

    int size() { return list.size(); }


};


#endif
