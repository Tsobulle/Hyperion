#include <exception>
#include <iostream>
#include <memory>

#include "../utils/include/random_number_generator.h"
#include "../utils/include/timing.h"

int main() {

  try {
    using namespace common;

    GaussianRandomVariable grv;
    for (size_t i = 0; i < 10000; ++i) {
      std::cout<< grv.get() << ", ";
    }

  } catch (std::exception& e) {
      std::cout << "Encountered exception " << e.what() << "\n";
  }
  return 0;
}