#clang++ -std=c++17 -O0 -emit-llvm -c ../list/cpp/list.cpp -o list.bc
#clang++ -std=c++17 -O0 -emit-llvm -c cpp/graph.cpp -o graph_mod.bc
#/opt/homebrew/Cellar/llvm/19.1.3/bin/llvm-link list.bc graph_mod.bc -o graph.bc
#/opt/homebrew/Cellar/llvm/19.1.3/bin/llvm-dis graph.bc -o graph.ll
#rm list.bc
#rm graph_mod.bc
#rm graph.bc

clang++ -std=c++17 -O0 -emit-llvm -S ../graph/cpp/graph.cpp -o graph.ll