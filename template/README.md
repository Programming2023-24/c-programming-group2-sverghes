# Assignment Template

This is a template directory for creating new C++ programming assignments.

## Structure

- `src/` - Source files (.cpp)
- `include/` - Header files (.h/.hpp)  
- `tests/` - Unit test files
- `CMakeLists.txt` - Build configuration
- `README.md` - Assignment instructions

## Creating a New Assignment

1. Copy this template directory
2. Rename to your assignment name (e.g., `assignment2`)
3. Update the CMakeLists.txt with your assignment name
4. Write your code in `src/` and headers in `include/`
5. Write tests in `tests/`
6. Update README.md with assignment instructions
7. Add the assignment to the root CMakeLists.txt

## Building and Testing

```bash
mkdir build
cd build
cmake ..
make
ctest
```