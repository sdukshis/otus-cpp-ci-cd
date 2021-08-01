cmake_minimum_required(VERSION 3.10)

project(hello CXX)

add_library(hello OBJECT src/hello.cpp)

target_include_directories(hello PUBLIC include)
target_compile_features(hello PUBLIC cxx_std_20)

add_executable(sayhello src/main.cpp)
target_link_libraries(sayhello hello)

