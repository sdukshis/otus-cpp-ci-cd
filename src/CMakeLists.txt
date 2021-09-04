add_library(hello hello.cpp)

target_compile_features(hello PUBLIC cxx_std_17)
target_include_directories(hello INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(sayhello main.cpp)
target_link_libraries(sayhello hello)
