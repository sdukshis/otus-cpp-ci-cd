#include <iostream>

#include "lib/hello.h"

int main() {
    int unitilized;
    std::cout << unitilized << '\n';
    hello::greetings(std::cout);
}
