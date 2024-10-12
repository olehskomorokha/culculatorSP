#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    double a = 23.3, b = 44.4;

    std::cout << "Addition: " << calc.Add(a, b) << std::endl;
    std::cout << "Subtraction: " << calc.Sub(a, b) << std::endl;

    return 0;
}