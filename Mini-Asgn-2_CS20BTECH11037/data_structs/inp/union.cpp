#include <iostream>

union un{
    char a;
    int b;
    double c;
};

int main() {
    un u;
    u.a = 'a';
    std::cout << u.a << std::endl;
    u.b = 1;
    std::cout << u.b << std::endl;
    u.c = 1.0;
    std::cout << u.c << std::endl;
}