ROOT_DIR=$(pwd)                                                
TEST_FILE="$ROOT_DIR/test/driver.cpp"  
BUILD_DIR="$ROOT_DIR/build"              
OUTPUT_FILE="$BUILD_DIR/test" 

mkdir -p build

clang++ -std=c++17 "cpp/graph.cpp" "../list/cpp/list.cpp" "$TEST_FILE" -o "$OUTPUT_FILE"


./build/test

rm -rf build