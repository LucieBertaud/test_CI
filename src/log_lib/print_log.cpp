#include <iostream>
#include< organized_projectConfig.h >
#include<log_lib/print_log.h>

void hello_world() {
	std::cout << "Hello World!\n" << std::endl;
}

void print_version() {
	std::cout << "project version is "<< organized_project_VERSION_MAJOR << "."
		<< organized_project_VERSION_MINOR << std::endl;
}