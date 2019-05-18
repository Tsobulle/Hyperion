//
// Created by ananas on 12/05/19.
//

#pragma once

#include <functional>
#include <chrono>
#include <iostream>

void time_function(std::function<void()> f) {
  using namespace std::chrono;

  high_resolution_clock::time_point t1 = high_resolution_clock::now();
  f();
  high_resolution_clock::time_point t2 = high_resolution_clock::now();

  auto duration = duration_cast<milliseconds>( t2 - t1 ).count();
  std::cout << "Evaluation took " << duration <<"ms" << std::endl;
}