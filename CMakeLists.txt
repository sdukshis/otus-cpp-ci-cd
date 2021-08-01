cmake_minimum_required(VERSION 3.10)

project(hello CXX)
include(${PROJECT_SOURCE_DIR}/cmake/conan.cmake)
conan_cmake_run(
  CONANFILE conanfile.txt
  BASIC_SETUP
  CMAKE_TARGETS # individual targets to link to
  BUILD
    missing 
)

option(BUILD_TESTS "Build unittests" ON)

include_directories(${PROJECT_SOURCE_DIR})
add_subdirectory(lib)
add_subdirectory(main)

if(BUILD_TESTS)
    add_subdirectory(tests)
endif()
