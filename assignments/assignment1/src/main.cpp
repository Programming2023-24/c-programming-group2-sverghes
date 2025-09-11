#include <iostream>
#include "hello.h"

int main() {
    // Test the greet function
    std::string name = "Student";
    std::cout << greet(name) << std::endl;
    
    // Test the add function
    int sum = add(5, 3);
    std::cout << "5 + 3 = " << sum << std::endl;
    
    // Test the isEven function
    int number = 10;
    if (isEven(number)) {
        std::cout << number << " is even" << std::endl;
    } else {
        std::cout << number << " is odd" << std::endl;
    }
    
    number = 7;
    if (isEven(number)) {
        std::cout << number << " is even" << std::endl;
    } else {
        std::cout << number << " is odd" << std::endl;
    }
    
    return 0;
}