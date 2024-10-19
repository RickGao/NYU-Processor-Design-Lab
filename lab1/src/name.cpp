#include <iostream>
#include <string>
#include "name.hpp"

std::string getUserName() {
    std::string name;
    std::cout << "What is your name? ";
    std::getline(std::cin, name);
    return name;
}
