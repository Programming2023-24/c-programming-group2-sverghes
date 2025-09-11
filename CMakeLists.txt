cmake_minimum_required(VERSION 3.14)
project(CPPClassroom)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add compiler flags for better error messages and debugging
set(CMAKE_CXX_FLAGS "-Wall -Wextra -g")

# Include FetchContent for downloading dependencies
include(FetchContent)

# Fetch Google Test
FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG release-1.12.1
)

# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

# Enable testing
enable_testing()

# Add subdirectories for assignments
add_subdirectory(assignments/assignment1)

# Optionally add more assignments as they are created
# add_subdirectory(assignments/assignment2)
# add_subdirectory(assignments/assignment3)