cmake_minimum_required(VERSION 3.10)
if(NOT TARGET loglib)
	project(organized_project VERSION 1.0)
	find_package(organized_project REQUIRED CONFIG)
	enable_testing()
endif()


add_executable(test_hello test_hello.cpp)
target_link_libraries(test_hello PRIVATE loglib)
add_test(NAME test_hello COMMAND test_hello)

add_executable(test_version test_version.cpp)
target_link_libraries(test_version PRIVATE loglib)
add_test(NAME test_version COMMAND test_version)