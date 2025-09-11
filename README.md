[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/X9GC_Rod)

# 🚀 C++ Programming Classroom

Welcome to the C++ Programming Classroom! This repository is set up for automated testing and grading of C++ programming assignments.

## 📋 Course Overview

This classroom provides a complete environment for C++ programming assignments with:
- ✅ **Automated Testing** - Your code is tested automatically when you submit
- 🏗️ **CMake Build System** - Professional C++ project structure  
- 🧪 **Google Test Framework** - Industry-standard unit testing
- 📊 **Autograding** - Instant feedback on your submissions
- 🎯 **GitHub Actions CI/CD** - Continuous integration and deployment

## 🏗️ Repository Structure

```
📁 c-programming-group2-sverghes/
├── 📁 assignments/           # All programming assignments
│   ├── 📁 assignment1/      # Hello World with Functions
│   │   ├── 📁 src/          # Your source code (.cpp files)
│   │   ├── 📁 include/      # Header files (.h/.hpp files)
│   │   ├── 📁 tests/        # Unit tests
│   │   ├── CMakeLists.txt   # Build configuration
│   │   └── README.md        # Assignment instructions
│   └── 📁 assignment2/      # Future assignments...
├── 📁 template/             # Template for new assignments
├── 📁 .github/workflows/    # Automated testing configuration
├── CMakeLists.txt           # Main build configuration
└── README.md               # This file
```

## 🚀 Getting Started

### Prerequisites
- **Git** - for version control
- **CMake** (3.14+) - build system
- **C++ Compiler** - GCC 7+ or Clang 7+ or MSVC 2017+
- **Internet connection** - for downloading Google Test

### Local Development Setup

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd c-programming-group2-sverghes
   ```

2. **Build all assignments**
   ```bash
   mkdir build
   cd build
   cmake ..
   make
   ```

3. **Run tests**
   ```bash
   ctest
   ```

4. **Run a specific assignment**
   ```bash
   ./assignments/assignment1/assignment1
   ```

## 📝 Working on Assignments

### Step 1: Navigate to Your Assignment
```bash
cd assignments/assignment1  # or assignment2, etc.
```

### Step 2: Read the Instructions
Each assignment has a `README.md` with:
- Objective and requirements
- Function specifications
- Expected inputs/outputs
- Grading criteria

### Step 3: Implement Your Solution
- Write your **header files** in `include/`
- Write your **source code** in `src/`
- Follow the function signatures provided

### Step 4: Test Locally
```bash
# From the root directory
mkdir -p build && cd build
cmake ..
make
ctest  # Run all tests
./assignments/assignment1/assignment1  # Run your program
```

### Step 5: Submit Your Work
```bash
git add .
git commit -m "Complete assignment 1"
git push
```

## 🧪 Testing and Grading

### Automated Testing
When you push code, GitHub Actions will:
1. **Build** your project
2. **Run all tests** 
3. **Generate a grade report**
4. **Provide feedback** on what passed/failed

### Test Types
- **Unit Tests** - Test individual functions
- **Integration Tests** - Test complete programs  
- **Edge Cases** - Test boundary conditions
- **Code Quality** - Check for warnings/errors

### Viewing Results
- Go to **Actions** tab in GitHub
- Click on the latest workflow run
- View the test results and grade report
- Download artifacts for detailed feedback

## 💡 Tips for Success

### Code Quality
- ✅ Use meaningful variable names
- ✅ Add comments for complex logic
- ✅ Follow consistent formatting
- ✅ Handle edge cases appropriately

### Testing Strategy
- 🧪 Test your code before submitting
- 🧪 Consider edge cases (empty inputs, negative numbers, etc.)
- 🧪 Verify function return types match specifications
- 🧪 Test with different input values

### Common Issues
❌ **Build Failures**
- Check for syntax errors
- Ensure all required files exist
- Verify function signatures match headers

❌ **Test Failures**
- Read test output carefully
- Check expected vs actual values
- Verify your logic handles all cases

❌ **Missing Files**
- Ensure you have all required source files
- Check that headers are included properly
- Verify CMakeLists.txt references all files

## 📚 Current Assignments

### Assignment 1: Hello World with Functions
**Status:** ✅ Available  
**Objective:** Learn basic C++ functions, strings, and arithmetic  
**Due:** Check assignment README for deadline

**Key Learning Goals:**
- Function declaration and definition
- String manipulation
- Basic arithmetic operations
- Boolean logic

[View Assignment 1 →](assignments/assignment1/README.md)

## 🔧 For Instructors

### Adding New Assignments

1. **Copy the template**
   ```bash
   cp -r template assignments/assignment3
   ```

2. **Update the assignment**
   - Modify `CMakeLists.txt` with new assignment name
   - Write assignment-specific code and tests
   - Update `README.md` with instructions

3. **Add to build system**
   ```cmake
   # In root CMakeLists.txt
   add_subdirectory(assignments/assignment3)
   ```

### Customizing Auto-grading
- Edit `.github/workflows/autograder.yml`
- Add custom test cases in each assignment's `tests/` directory
- Modify grading criteria and point distribution

## 🆘 Getting Help

### Resources
- **C++ Reference**: https://cppreference.com/
- **CMake Documentation**: https://cmake.org/documentation/
- **Google Test Primer**: https://google.github.io/googletest/primer.html

### Support
- Check the **Issues** tab for common problems
- Review **failed test outputs** in GitHub Actions
- Ask questions in class or office hours

## 📄 License

This classroom repository is for educational purposes. Code submissions are subject to academic integrity policies.

---

**Happy Coding! 🎯** Remember to start early, test often, and don't hesitate to ask for help!