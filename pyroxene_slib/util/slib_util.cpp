#include "slib_util.h"

namespace slib_util {
        void list_error(const std::string& message) {
                std::cout <<"\033[1;31m";
                std::cout << "List error: " + message + ".\n";
                exit(1);
        }
}


