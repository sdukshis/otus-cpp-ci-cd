#include <hello/hello.hpp>

std::ostream &hello::greetings(std::ostream &out) {
  return out << "Hello, world";
}