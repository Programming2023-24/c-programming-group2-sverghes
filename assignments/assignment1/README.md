# Assignment 1: Hello World with Functions

## Objective
Create a simple C++ program that demonstrates basic programming concepts including functions, variables, and output.

## Requirements

1. **Create a header file** (`include/hello.h`) with function declarations
2. **Implement functions** in a source file (`src/hello.cpp`) that:
   - `greet(string name)` - returns a greeting message with the given name
   - `add(int a, int b)` - returns the sum of two integers
   - `isEven(int number)` - returns true if the number is even, false otherwise

3. **Main program** (`src/main.cpp`) should:
   - Call all three functions and display their results
   - Demonstrate the functions work correctly

## Testing
Your code will be automatically tested. Make sure your functions:
- Return the correct types
- Work with the expected parameters
- Produce correct results

## Building
```bash
mkdir build
cd build
cmake ..
make
./assignment1
```

## Testing
```bash
ctest
```

## Grading
- Code compiles without warnings: 30%
- All tests pass: 50% 
- Code style and documentation: 20%