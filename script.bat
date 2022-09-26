rmdir /s /q build
mkdir build
cd build
:: cmake ..
cmake -DORGANIZED_PROJECT_WITH_TESTS:BOOL=TRUE ..
:: cmake ORGANIZED_PROJECT_WITH_EXECUTABLES:BOOL=TRUE ..
cmake --build . --config Release
:: cmake --build . en mode debug
cd ..