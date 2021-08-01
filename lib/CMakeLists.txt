add_library(hello hello.cpp)

target_include_directories(hello PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_features(hello PUBLIC cxx_std_17)
