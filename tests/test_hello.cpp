#include <sstream>

#include <gtest/gtest.h>

#include <hello.h>

TEST(Hello, simple) {
  std::stringstream ss;
  hello::greetings(ss);
  ASSERT_EQ("Hello, world", ss.str());
}
