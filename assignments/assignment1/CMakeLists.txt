cmake_minimum_required(VERSION 3.14)

set(ASSIGNMENT_NAME "assignment1")
project(${ASSIGNMENT_NAME})

# Include directories
include_directories(include)

# Source files for the main executable
set(SOURCES
    src/main.cpp
    src/hello.cpp
)

# Create main executable
add_executable(${ASSIGNMENT_NAME} ${SOURCES})

# Source files for testing (exclude main.cpp since it has its own main)
set(TEST_SOURCES
    tests/test_hello.cpp
    src/hello.cpp
)

# Create test executable
add_executable(${ASSIGNMENT_NAME}_tests ${TEST_SOURCES})

# Link Google Test
target_link_libraries(${ASSIGNMENT_NAME}_tests gtest_main gtest)

# Add test
add_test(NAME ${ASSIGNMENT_NAME}_tests COMMAND ${ASSIGNMENT_NAME}_tests)