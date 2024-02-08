#include <iostream>
#include <vector>

int main() {
    std::vector<int> v(10, 1);
    for (int i = 0; i < 10; ++i) {
        std::cout << v[i] << std::endl;
    }
    return 0;
}