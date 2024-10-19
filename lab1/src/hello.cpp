#include <iostream>
#include "name.hpp"

int main() {
    std::string name = getUserName();
    std::cout << "Hello, " << name << "!" << std::endl;
    return 0;
}
