# 👨‍🏫 Instructor Guide - C++ Classroom

## Overview
This repository has been set up as a complete C++ programming classroom with automated testing and grading capabilities. Students can submit assignments and receive instant feedback through GitHub Actions.

## 🎯 Key Features
- ✅ **Automated Testing**: Unit tests run on every commit/push
- ✅ **Professional Build System**: CMake + Google Test framework  
- ✅ **Instant Feedback**: Grade reports generated automatically
- ✅ **Scalable**: Easy to add new assignments
- ✅ **Student-Friendly**: Helper scripts and clear documentation

## 📁 Repository Structure

```
├── assignments/
│   └── assignment1/         # Example: Hello World with Functions
│       ├── src/            # Student code goes here
│       ├── include/        # Header files
│       ├── tests/          # Unit tests (instructor-created)
│       ├── CMakeLists.txt  # Build config
│       └── README.md       # Assignment instructions
├── template/               # Template for creating new assignments
├── .github/workflows/      # GitHub Actions for autograding
├── CMakeLists.txt         # Root build configuration
├── run_tests.sh           # Student helper script
└── README.md              # Student documentation
```

## 🚀 Quick Start for Instructors

### Adding New Assignments

1. **Copy the template:**
   ```bash
   cp -r template assignments/assignment2
   cd assignments/assignment2
   ```

2. **Customize the assignment:**
   - Edit `CMakeLists.txt`: Change `ASSIGNMENT_NAME` to "assignment2"
   - Write assignment code in `src/` and `include/`
   - Create comprehensive tests in `tests/`
   - Update `README.md` with assignment instructions

3. **Add to build system:**
   ```cmake
   # In root CMakeLists.txt, add:
   add_subdirectory(assignments/assignment2)
   ```

4. **Test locally:**
   ```bash
   ./run_tests.sh assignment2
   ```

### Example Assignment Structure
The included Assignment 1 demonstrates:
- **Function declarations** in header files (`include/hello.h`)
- **Implementation** in source files (`src/hello.cpp`)
- **Main program** (`src/main.cpp`)
- **Comprehensive unit tests** (`tests/test_hello.cpp`)

## 🧪 Testing Strategy

### Unit Tests (Google Test)
- Test individual functions with various inputs
- Include edge cases (empty strings, negative numbers, etc.)
- Verify return types and expected behavior
- Example test structure:
  ```cpp
  TEST(AssignmentTest, FunctionName) {
      EXPECT_EQ(myFunction(input), expected_output);
      EXPECT_TRUE(boolFunction(input));
  }
  ```

### Integration Tests
- Test complete program functionality
- Verify all components work together
- Can be added to the same test files

## 📊 Autograding System

### GitHub Actions Workflow
Located in `.github/workflows/autograder.yml`:

1. **Build Phase**: Compiles all assignments with CMake
2. **Test Phase**: Runs all unit tests with CTest
3. **Execution Phase**: Runs assignment executables
4. **Reporting**: Generates grade reports and artifacts

### Viewing Results
Students can see results in:
- **GitHub Actions tab**: Full build and test logs
- **Artifacts**: Downloadable grade reports
- **Console output**: Immediate feedback on failures

### Customizing Grading
- Modify point distribution in workflow file
- Add custom grading logic in test files
- Create rubric-based assessments

## 👥 Student Workflow

1. **Clone repository** (already done via GitHub Classroom)
2. **Navigate to assignment** folder
3. **Read instructions** in assignment README
4. **Implement solution** in designated files
5. **Test locally** with `./run_tests.sh`
6. **Submit via git**: `git add . && git commit -m "Solution" && git push`
7. **View results** in GitHub Actions

## 🔧 Maintenance

### Adding Dependencies
To add C++ libraries:
```cmake
# In CMakeLists.txt
FetchContent_Declare(
  library_name
  GIT_REPOSITORY https://github.com/user/library.git
  GIT_TAG version
)
FetchContent_MakeAvailable(library_name)
```

### Updating Test Framework
The system uses Google Test 1.12.1. To update:
```cmake
# In root CMakeLists.txt, change:
GIT_TAG release-1.14.0  # or newer version
```

### Platform Compatibility
Current setup supports:
- ✅ Linux (Ubuntu 20.04+)
- ✅ macOS (with Xcode command line tools)
- ✅ Windows (with Visual Studio or MinGW)

## 📋 Assignment Ideas

### Beginner Level
- **Assignment 1** (included): Functions, strings, basic I/O
- **Variables and Types**: Data type exploration
- **Control Flow**: Loops, conditionals, switch statements
- **Arrays**: Basic array manipulation

### Intermediate Level
- **Classes and Objects**: OOP fundamentals
- **Dynamic Memory**: Pointers and memory management
- **File I/O**: Reading/writing files
- **STL Containers**: Vector, map, set usage

### Advanced Level
- **Templates**: Generic programming
- **Exception Handling**: Error management
- **Multi-threading**: Basic parallelism
- **Design Patterns**: Common programming patterns

## 🛠️ Troubleshooting

### Common Issues

**Build Failures:**
- Check CMakeLists.txt syntax
- Verify all source files are included
- Ensure proper include paths

**Test Failures:**
- Review test logic and expected outputs
- Check for missing edge cases
- Verify function signatures match headers

**GitHub Actions Issues:**
- Check workflow YAML syntax
- Verify Ubuntu package names in dependencies
- Monitor action execution logs

### Getting Help
- Review GitHub Actions logs for detailed error messages
- Test locally before pushing to identify issues early
- Use the included `run_tests.sh` for consistent local testing

## 📈 Scaling the Classroom

### For Larger Classes
- Use GitHub Teams for group assignments
- Implement branch protection rules
- Consider submission deadlines in workflow

### Advanced Features
- Add code quality checks (linting, static analysis)
- Implement plagiarism detection
- Create performance benchmarking tests
- Add documentation generation

---

**Happy Teaching! 🎓** This system is designed to scale with your needs and provide students with immediate, actionable feedback on their C++ programming assignments.