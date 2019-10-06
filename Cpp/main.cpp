#include <iostream>
#include <string>

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
            std::cout << "Fizz" << std::endl;
        } else if (i % 5 == 0) {
            std::cout << "Buzz" << std::endl;
        } else if (i % 3 == 0) {
            std::cout << "Fizz" << std::endl;
        } else {
            std::cout << i << std::endl;
        }
    }
    return 0;
}