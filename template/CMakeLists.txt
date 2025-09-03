cmake_minimum_required(VERSION 3.14)

# Set project name - CHANGE THIS for each assignment
set(ASSIGNMENT_NAME "template")
project(${ASSIGNMENT_NAME})

# Include directories
include_directories(include)

# Source files
set(SOURCES
    src/main.cpp
    # Add more source files here as needed
)

# Create executable
add_executable(${ASSIGNMENT_NAME} ${SOURCES})

# Test files
set(TEST_SOURCES
    tests/test_main.cpp
    # Add source files that need to be tested (without main.cpp)
    # src/your_class.cpp
)

# Create test executable
add_executable(${ASSIGNMENT_NAME}_tests ${TEST_SOURCES})

# Link Google Test
target_link_libraries(${ASSIGNMENT_NAME}_tests gtest_main gtest)

# Add test
add_test(NAME ${ASSIGNMENT_NAME}_tests COMMAND ${ASSIGNMENT_NAME}_tests)