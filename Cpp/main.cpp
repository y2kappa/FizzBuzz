#include <iostream>
#include <string>

constexpr char const* fizz = "Fizz\n";
constexpr char const* buzz = "Buzz\n";
constexpr char const* fizzbuzz = "FizzBuzz\n";

int main(int argc, char** argv)
{
    int number = 10;
    if (argc == 2)
    {
        number = std::atoi(argv[1]);
    }
    for (int i = 1; i <= number; i++)
    {
        if (i % 15 == 0)
        {
            std::cout << fizz;
        } else if (i % 5 == 0) {
            std::cout << buzz ;
        } else if (i % 3 == 0) {
            std::cout << fizzbuzz;
        } else {
            std::cout << i << "\n";
        }
    }
    return 0;
}