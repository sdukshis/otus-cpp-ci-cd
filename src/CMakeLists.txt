add_library(hello hello.cpp)

target_compile_features(hello PUBLIC cxx_std_17)

add_executable(sayhello main.cpp)
target_link_libraries(sayhello hello)
