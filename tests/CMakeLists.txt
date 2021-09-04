add_executable(hello-tests test_hello.cpp)
target_link_libraries(hello-tests hello CONAN_PKG::gtest)

add_test(HelloTest "${CMAKE_BINARY_DIR}/bin/hello-tests")
