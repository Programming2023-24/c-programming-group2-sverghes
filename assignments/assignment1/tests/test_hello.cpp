#include <gtest/gtest.h>
#include "hello.h"

// Test the greet function
TEST(HelloTest, GreetFunction) {
    EXPECT_EQ(greet("World"), "Hello, World!");
    EXPECT_EQ(greet("Student"), "Hello, Student!");
    EXPECT_EQ(greet(""), "Hello, !");
}

// Test the add function
TEST(HelloTest, AddFunction) {
    EXPECT_EQ(add(2, 3), 5);
    EXPECT_EQ(add(0, 0), 0);
    EXPECT_EQ(add(-1, 1), 0);
    EXPECT_EQ(add(10, 20), 30);
    EXPECT_EQ(add(-5, -3), -8);
}

// Test the isEven function
TEST(HelloTest, IsEvenFunction) {
    EXPECT_TRUE(isEven(2));
    EXPECT_TRUE(isEven(0));
    EXPECT_TRUE(isEven(-2));
    EXPECT_TRUE(isEven(100));
    
    EXPECT_FALSE(isEven(1));
    EXPECT_FALSE(isEven(3));
    EXPECT_FALSE(isEven(-1));
    EXPECT_FALSE(isEven(99));
}