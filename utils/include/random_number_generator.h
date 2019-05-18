//
// Created by ananas on 09/05/19.
//

#pragma once

#include <memory>
#include <mutex>
#include <math.h>

namespace common {


double GetUniformDistributedRandomNumber();

class RandomNumberGeneratorInterface {
 public:
  virtual void seed(unsigned int) = 0;
  virtual int get() = 0;
  virtual unsigned int modulo() const = 0;
};


class UniformLinearCongruential : public RandomNumberGeneratorInterface {
 public:
  explicit UniformLinearCongruential() noexcept = default;
  UniformLinearCongruential& operator=(const UniformLinearCongruential&) = delete;
  UniformLinearCongruential(const UniformLinearCongruential&) = delete;

  virtual ~UniformLinearCongruential() {}

  virtual void seed(unsigned int s) override { seed_ = s; }

  virtual int get() override { return (seed_ = (multiplier_a_ * seed_ + increment_c_) & 0x7fffffff); }

  virtual unsigned int modulo() const override { return modulo_m_; }

 private:
  int multiplier_a_ = 1103515245;
  int increment_c_ = 12345;
  unsigned int modulo_m_ = 2147483648;
  unsigned int seed_ = 54321;
};

class UniformLCWithMutex {
 public:
  using value_type = std::unique_ptr<RandomNumberGeneratorInterface>;
  explicit UniformLCWithMutex(value_type random_number_generator)
  : random_number_generator_(std::move(random_number_generator)) {}

  int get() {
    std::lock_guard<std::mutex> lock(m_);
    return random_number_generator_->get();
  }

 private:
  value_type random_number_generator_;
  std::mutex m_;
};

enum class GaussianGeneratorMethod {BOX_MULLER, INVERSE_TRANSFORM};

class GaussianRandomVariable final {
 public:
  using value_type = std::unique_ptr<RandomNumberGeneratorInterface>;
  explicit GaussianRandomVariable(GaussianGeneratorMethod method = GaussianGeneratorMethod::BOX_MULLER)
  : method_(method),
    random_number_generator_(std::make_unique<UniformLinearCongruential>()) {}

  double get() {
    const auto u1 = static_cast<double>(random_number_generator_->get()) / random_number_generator_->modulo();
    const auto u2 = static_cast<double>(random_number_generator_->get()) / random_number_generator_->modulo();

    return std::sqrt(- 2.0 * std::log(u1)) * std::cos(2 * M_PI * u2);
  }

 private:
  GaussianGeneratorMethod method_;
  value_type random_number_generator_;
};

void GetUniformDistributedMultiThreaded();

} // namespace common