#include "../cpp/list.h"
#include <iostream>

int main() {
    slib_list<int> my_list;
    my_list.insert(55, 0);
    my_list.insert(64, 0);

    std::cout << my_list.at(1) << "\n";
    std::cout << my_list.remove(0) << "\n"; 
}