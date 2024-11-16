clang++ -std=c++17 -O0 -emit-llvm -c ../pyroxene_slib/graph/cpp/graph.cpp -o ../pyroxene_slib/llvm_modules/graph_mod.bc
clang++ -std=c++17 -O0 -emit-llvm -c ../pyroxene_slib/list/cpp/list.cpp -o ../pyroxene_slib/llvm_modules/list.bc
llvm-link ../pyroxene_slib/llvm_modules/graph_mod.bc ../pyroxene_slib/llvm_modules/list.bc -o ../pyroxene_slib/llvm_modules/graph.bc

