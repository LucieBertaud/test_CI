#add the executable

add_executable( hello hello.cpp)
target_link_libraries(hello PRIVATE loglib)

add_executable( hello2 hello2.cpp)