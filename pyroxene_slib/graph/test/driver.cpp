#include "../cpp/graph.h"

#include <iostream>

int main(int arg, char** argv) {
    std::cout << "Graph Module Test\n";

    slib_graph<int> my_graph;
    /*
    my_graph.insert(10);
    my_graph.insert(25);
    std::cout << "Graph Size: " << my_graph.size() << "\n";
    my_graph.remove(10);
    std::cout << "Graph Size: " << my_graph.size() << "\n";
    */

    for (int i = 0; i <= 5; i++) {
        my_graph.insert(i);
    }

    my_graph.add_edge(0, 1);
    my_graph.add_edge(1, 3);
    my_graph.add_edge(1, 4);
    my_graph.add_edge(3, 5);
    my_graph.add_edge(0, 2);

    my_graph.remove_edge(0,2);

    my_graph.remove(3);

    slib_list<int> breadth_first = my_graph.BFS(0);
    slib_list<int> depth_first = my_graph.DFS(0);

    for (int i = 0; i < breadth_first.size() - 1; i++) {
        std::cout << breadth_first.at(i) << ", ";
    }

    std::cout << breadth_first.at(breadth_first.size() - 1) << "\n";


        for (int i = 0; i < depth_first.size() - 1; i++) {
        std::cout << depth_first.at(i) << ", ";
    }

    std::cout << depth_first.at(depth_first.size() - 1) << "\n";

    return 0;
}