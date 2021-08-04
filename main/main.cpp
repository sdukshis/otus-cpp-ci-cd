#include <iostream>

#include "lib/hello.h"

int main() {
    int uninitialized;
    std::cout << uninitialized << '\n';
    hello::greetings(std::cout);
}
