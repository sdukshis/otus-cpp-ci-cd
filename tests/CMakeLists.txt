add_executable(hello-tests test_hello.cpp)
target_link_libraries(hello-tests hello CONAN_PKG::gtest)
add_custom_target(
    test $<TARGET_FILE:hello-tests> 
    DEPENDS hello-tests
)
