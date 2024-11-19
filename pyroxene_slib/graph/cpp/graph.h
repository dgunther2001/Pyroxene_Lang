#ifndef SLIB_GRAPH_H
#define SLIB_GRAPH_H

#include "../../list/cpp/list.h"
#include <iostream>
#include <set>
#include <queue>
#include <stack>

void graph_error(const std::string& message);

template <typename T>
class slib_graph {
private:
    std::set<T> nodes;
    std::set<std::pair<T, T> > edges;

public:
    slib_graph() {}

    void insert(T new_node) {
        if (nodes.find(new_node) != nodes.end()) {
            graph_error("Node found in graph");
        }
        nodes.insert(new_node);
    }

    bool contains_node(T node) { // returns true if it is within
        return nodes.find(node) != nodes.end();
    }

    void remove(T node_to_remove) {
        // ADD EDGE REMOVAL LOGIC!!!

        if (nodes.find(node_to_remove) == nodes.end()) {
            graph_error("Node not found in graph");
        }
        nodes.erase(node_to_remove);

        

        for (auto iterator = edges.begin(); iterator != edges.end(); ) {
            if (iterator->first == node_to_remove || iterator->second == node_to_remove) {
                iterator = edges.erase(iterator);
            } else {
                iterator++;
            }
        }
    }

    int size() {
        return nodes.size();
    }

    void add_edge(T from_node, T to_node) {
        if (!contains_node(from_node)) {
            nodes.insert(from_node);
        }

        if (!contains_node(to_node)) {
            nodes.insert(to_node);
        }

        std::pair<T, T> new_edge = {from_node, to_node};

        if (edges.find(new_edge) == edges.end()) {
            edges.insert(new_edge);
        }
    }

    void remove_edge(T from_node, T to_node) {
        if (edges.find({from_node, to_node}) == edges.end()) {
            return;
        }
        else {
            edges.erase({from_node, to_node});
        }
    }

    slib_list<T> BFS(T start_node) {
        if (nodes.find(start_node) == nodes.end()) {
            graph_error("Starting node not found in graph (BFS)");
        }

        slib_list<T> BFS;
        std::queue<T> traversal_queue;
        std::set<T> visited;

        T current_node;

        traversal_queue.push(start_node);

        while(!traversal_queue.empty()) {
            current_node = traversal_queue.front();
            traversal_queue.pop();

            if (visited.find(current_node) == visited.end()) {
                visited.insert(current_node);
                BFS.push(current_node);

                for (auto const& edge : edges) {
                    if (edge.first == current_node) {
                        traversal_queue.push(edge.second);
                    }
                }
            }
        }

        return BFS;
    }

    void print_BFS(T start_node) {
        if (!(std::is_same<T, int>::start_node && std::is_same<T, float>::start_node && std::is_same<T, char>::start_node && std::is_same<T, bool>::start_node)) {
            graph_error("Invalid type requested to print BFS.");
        }

        slib_list<T> bfs = BFS(start_node);
        std::cout << "[";
        for (int i = 0; i < bfs.size() - 1; i++) {
            std::cout << bfs.at(i) << ", ";
        }
        std::cout << bfs.at(bfs.size() - 1) << "]\n";
    }

    slib_list<T> DFS(T start_node) {
        if (nodes.find(start_node) == nodes.end()) {
            graph_error("Starting node not found in graph (DFS)");
        }

        slib_list<T> DFS;
        std::stack<T> traversal_stack;
        std::set<T> visited;

        T current_node;

        traversal_stack.push(start_node);

        while(!traversal_stack.empty()) {
            current_node = traversal_stack.top();
            traversal_stack.pop();

            if (visited.find(current_node) == visited.end()) {
                visited.insert(current_node);
                DFS.push(current_node);

                for (auto const& edge : edges) {
                    if (edge.first == current_node) {
                        traversal_stack.push(edge.second);
                    }
                }
            }
        }

        return DFS;
    }

    void print_DFS(T start_node) {
        if (!(std::is_same<T, int>::start_node && std::is_same<T, float>::start_node && std::is_same<T, char>::start_node && std::is_same<T, bool>::start_node)) {
            graph_error("Invalid type requested to print DFS.");
        }
        slib_list<T> dfs = DFS(start_node);
        std::cout << "[";
        for (int i = 0; i < dfs.size() - 1; i++) {
            std::cout << dfs.at(i) << ", ";
        }
        std::cout << dfs.at(dfs.size() - 1) << "]\n";
    }


};


#endif