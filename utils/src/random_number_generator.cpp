//
// Created by ananas on 09/05/19.
//

#include "random_number_generator.h"
#include <memory>
#include <iostream>
#include <random>
#include <thread>

namespace common {

double GetUniformDistributedRandomNumber() {
  static std::unique_ptr<RandomNumberGeneratorInterface> generator = nullptr;
  if (nullptr == generator) {
    generator = std::make_unique<UniformLinearCongruential>();
  }

  return static_cast<double>(generator->get()) / generator->modulo();
}

void GetUniformDistributedMultiThreaded() {
  auto generator = std::make_unique<UniformLinearCongruential>();
  UniformLCWithMutex protected_generator {(std::move(generator))};
  std::vector<std::thread> threads;

  auto f = [&protected_generator]() { for (long int k = 0; k < 10000000; ++k) {
    protected_generator.get();
  }};

  for(size_t i = 0;i < 10;++i){
    threads.emplace_back(f);
  }
  for (auto& t : threads) {
    t.join();
  }
}

double GetUniformDistributionFromLib() {
  std::random_device rd;
  std::mt19937 mt(rd());
  std::uniform_real_distribution<double> dist(0.0, 1.0);

  return dist(mt);
}

} // namespace common

