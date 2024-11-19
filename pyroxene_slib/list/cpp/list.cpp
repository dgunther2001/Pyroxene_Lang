#include "list.h"

template class slib_list<int>;
template class slib_list<float>;
template class slib_list<char>;
template class slib_list<bool>;

void list_error(const std::string& message) {
        std::cout <<"\033[1;31m";
        std::cout << "List error: " + message + ".\n";
        exit(1);
}