#ifndef __TESTING_HPP__
#define __TESTING_HPP__

/*
 * Test this with something like:
 * g++ -std=c++11 -x c++ -DTEST_TESTING testing.hpp -o testing_test
 * ./testing_test
 */


#include <string>
#include <stdexcept>
#include <cstdlib>
#include <iomanip>
#include <iostream>

#define TEST_CASE(x) #x, x

namespace testing{
    
//function pointer to run as a test
using test_function = void (*)(void);

struct suite {
 public:
  //initializes the test suite
  explicit suite(const std::string& test_suite_name): failed(0) {
    std::cout << "=== Testing " << test_suite_name << " ===" << std::endl;
  }
  //run the test
  void test(const std::string& test_name, test_function function) {
    std::cout << std::setw(32) << test_name << std::flush;
    try {
      //run the test
      function();
      //it didnt throw
      std::cout << " [PASS]" << std::endl;
    }//it threw so log the issue
    catch (const std::exception& e) {
      std::cout << " [FAIL: " << e.what() << "]" << std::endl;
      ++failed;
    }//it threw something that wasn't derived from std::exception?
    catch (...) {
      std::cerr << " [FAIL: Unexpected error]" << std::endl;
      throw;
    }
  }
  //returns EXIT_FAILURE if any tests failed otherwise returns EXIT_SUCCESS
  int tear_down() {
    std::cout << "=== Failed " << failed << " tests ===" << std::endl;
    if(failed > 0)
      return EXIT_FAILURE;
    else
      return EXIT_SUCCESS;
  }
  
 private:
  //number of failed tests
  size_t failed;
};

}

#endif //__TESTING_HPP__

#ifdef TEST_TESTING

namespace {
    
  void passing_test() {
    //we didn't throw an unhandled exception
    //therefore we pass
  }
  
  void failing_test() {
    //this will bomb the test
    throw std::runtime_error("You've found a failing test");
  }
    
}

int main() {
  test::suite suite("sample_test_suite");
  
  //run each test
  suite.test(TEST_CASE(passing_test));
  suite.test(TEST_CASE(failing_test));
  
  return suite.tear_down();
}

#endif
