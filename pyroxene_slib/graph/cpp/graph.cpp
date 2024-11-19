#include "graph.h"

void graph_error(const std::string& message) {
        std::cout <<"\033[1;31m";
        std::cout << "Graph error: " + message + ".\n";
        exit(1);
}


template class slib_graph<int>;
template class slib_graph<float>;
template class slib_graph<char>;
template class slib_graph<bool>;