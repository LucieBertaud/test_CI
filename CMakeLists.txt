cmake_minimum_required(VERSION 3.10)

# set the project name
project(organized_project VERSION 1.0)

# use the CMAKE_CXX_STANDARD variable
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIERED TRUE)

#export configuration to source code
configure_file(cmake/organized_projectConfig.h.in organized_projectConfig.h)

#about libraries
add_subdirectory(src/log_lib)

#about executable
option(ORGANIZED_PROJECT_WITH_EXECUTABLES "Compile mains" OFF)
if(ORGANIZED_PROJECT_WITH_EXECUTABLES)
	message(STATUS "Configuring organized_project with executables")
	add_subdirectory(mains)
endif()

#about tests
option(ORGANIZED_PROJECT_WITH_TESTS "Compile test projects" OFF)
if(ORGANIZED_PROJECT_WITH_TESTS)
# Enable testing with CTest
	enable_testing()
	message(STATUS "Configuring FirstOrganizedCMake with tests")
	add_subdirectory(tests)
endif()

include(CMakePackageConfigHelpers) # define the following command
configure_package_config_file(
	cmake/organized_projectConfig.cmake.in organized_projectConfig.cmake
	INSTALL_DESTINATION cmake/
)

#install project configuration
install(FILES ${PROJECT_BINARY_DIR}/organized_projectConfig.cmake DESTINATION 
cmake/)

#Configure CPack
if(WIN32)
	set(CPACK_GENERATOR "ZIP")
else()
	set(CPACK_GENERATOR "TGZ")
endif()

#this must always be lats!
include(CPack)