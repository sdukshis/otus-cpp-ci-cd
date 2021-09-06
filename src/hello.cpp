#include "hello.h"

std::ostream &hello::greetings(std::ostream &out) {
  return out << "Hello, world!";
}
