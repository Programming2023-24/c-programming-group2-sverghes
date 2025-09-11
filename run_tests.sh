#!/bin/bash

# C++ Classroom Build and Test Script
# Usage: ./run_tests.sh [assignment_name]

echo "🚀 C++ Classroom - Build and Test Script"
echo "========================================"

# Change to repository root
cd "$(dirname "$0")"

# Clean up old build if it exists
if [ -d "build" ]; then
    echo "🧹 Cleaning old build directory..."
    rm -rf build
fi

# Create build directory
echo "📁 Creating build directory..."
mkdir build
cd build

# Configure with CMake
echo "⚙️  Configuring with CMake..."
if ! cmake ..; then
    echo "❌ CMake configuration failed!"
    exit 1
fi

# Build the project
echo "🔨 Building project..."
if ! make; then
    echo "❌ Build failed!"
    exit 1
fi

echo "✅ Build successful!"

# Run tests
echo ""
echo "🧪 Running tests..."
echo "==================="

if ! ctest --output-on-failure; then
    echo "❌ Some tests failed!"
    echo ""
    echo "💡 Tips:"
    echo "   - Check your function implementations"
    echo "   - Verify return types match specifications"  
    echo "   - Test edge cases manually"
    exit 1
fi

echo ""
echo "✅ All tests passed!"

# Run executables if no specific assignment specified
if [ -z "$1" ]; then
    echo ""
    echo "🎯 Running assignment programs..."
    echo "================================"
    
    for assignment in assignments/*/; do
        assignment_name=$(basename "$assignment")
        executable="assignments/${assignment_name}/${assignment_name}"
        
        if [ -f "$executable" ]; then
            echo ""
            echo "▶️  Running ${assignment_name}:"
            echo "----------------------------"
            ./"$executable"
        fi
    done
else
    # Run specific assignment
    executable="assignments/$1/$1"
    if [ -f "$executable" ]; then
        echo ""
        echo "▶️  Running $1:"
        echo "----------------------------"
        ./"$executable"
    else
        echo "❌ Assignment '$1' not found or not built!"
        exit 1
    fi
fi

echo ""
echo "🎉 All done! Happy coding!"