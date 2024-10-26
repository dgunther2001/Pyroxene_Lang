ROOT_DIR=$(pwd)                                       
UTIL_DIR="$ROOT_DIR/../util"          
TEST_FILE="$ROOT_DIR/test/slib_list_test.cpp"  
BUILD_DIR="$ROOT_DIR/build"              
OUTPUT_FILE="$BUILD_DIR/test" 

mkdir -p build

g++ "cpp/list.cpp" "$UTIL_DIR/slib_util.cpp" "$TEST_FILE" -o "$OUTPUT_FILE"

./build/test

rm -rf build