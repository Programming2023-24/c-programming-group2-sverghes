#include "hello.h"

std::string greet(const std::string& name) {
    return "Hello, " + name + "!";
}

int add(int a, int b) {
    return a + b;
}

bool isEven(int number) {
    return number % 2 == 0;
}