#include <iostream>
#include <vector>
#include <climits>

int main() {
    int n;
    std::cin >> n;
    std::vector<int> v(n);
    for (int i = 0; i < n; ++i) {
        std::cin >> v[i];
    }

    int max_ele = INT_MIN;
    for (int i = 0; i < n; ++i) {
        if (max_ele < v[i]) {
            max_ele = v[i];
        }
    }
    std::cout << max_ele << std::endl;
}